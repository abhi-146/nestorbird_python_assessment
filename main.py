from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import psycopg2
from psycopg2 import sql

def scrap_data_and_add_to_database():
    
    # Setup Selenium WebDriver
    # Creates an instance of chrome web driver 
    # service=Service(...) specifies the service to use for managing the chrome driver
    # ChromeDriverManager().install() installs the appropriate version of ChromeDriver
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))

    # Navigate to the website
    driver.get('https://www.geeksforgeeks.org/courses?source=google&medium=cpc&device=c&keyword=gfg&matchtype=e&campaignid=20039445781&adgroup=147845288105&gad_source=1&gclid=CjwKCAjwoPOwBhAeEiwAJuXRh-P8kZIrwxatvpT3t6Ol4CGpitmOYSTewpQwvxVFeRl1bpAlTOC9NBoCUFcQAvD_BwE')

    # Use WebDriverWait to ensure the page has loaded and elements are available
    wait = WebDriverWait(driver, 5)

    try:
        # Wait until at least two elements with class 'g-mt-4' are present
        elements = wait.until(EC.presence_of_all_elements_located((By.CLASS_NAME, "g-mt-4")))

        # Wait until we get get elements of g-mt-2 class
        elements_g_mt_2 = wait.until(EC.presence_of_all_elements_located((By.CLASS_NAME, "g-mt-2")))

        # Accessing the second element (index 1) if it exists
        if len(elements) > 1:
            gmt_class_index_2 = elements[1]
            links_all_courses = gmt_class_index_2.find_elements(By.TAG_NAME, "a")
        
        if len(elements_g_mt_2) >= 1:
            for element in elements_g_mt_2:
                links_all_courses.extend(element.find_elements(By.TAG_NAME, "a"))
        
        all_courses_data = []

        # Get all courses links
        for link in links_all_courses:

            # Extract the course href
            course_href = link.get_attribute('href')

            # Locate the course heading
            course_heading_element = link.find_element(By.CLASS_NAME, "course_heading")

            # Extract the heading text if heading element exists
            if(course_heading_element):
                course_heading = course_heading_element.text
            
            # Locate the element containing the interested geeks count
            interested_geeks_element = link.find_element(By.CSS_SELECTOR, '.courseListingPage_descriptionText__zN_K1 > span')

            # Extract the text from the interested geeks element
            if(interested_geeks_element):
                interested_geeks_count = interested_geeks_element.text

            # Locate the element containing the level
            rating_element = link.find_element(By.CSS_SELECTOR, '.courseListingPage_ratingContainer__v7XSj > .urw-din')

            # Extract the text from the level element
            if(rating_element):
                course_rating = rating_element.text

            # Locate the element containing the price
            price_element = link.find_element(By.CLASS_NAME, 'courseListingPage_batchFee__0NlbJ')

            # Extract the text from the level element
            if(price_element):
                course_price = price_element.text

            # Create tuple using the data extracted above
            course_info_tuple = (
                course_href or "n/a", 
                course_heading or "n/a", 
                interested_geeks_count or "n/a", 
                course_rating or "n/a", 
                course_price or "n/a"
            )

            all_courses_data.append(course_info_tuple)

        add_data_to_database(all_courses_data)

    except Exception as e:
        print(f"An error occurred: {e}")
    finally:
        driver.quit()

def add_data_to_database(all_courses_data):
    try:
        # Connect to your PostgreSQL database
        # Add your credentials
        conn = psycopg2.connect(database = "", 
                user = "", 
                host= "",
                password = "",
                port = )

        cursor = conn.cursor()

        create_table_query = """
            CREATE TABLE IF NOT EXISTS courses (
                id SERIAL PRIMARY KEY,
                course_heading TEXT,
                course_href TEXT,
                interested_geeks_count TEXT,
                course_rating TEXT,
                course_price TEXT
            );
            """
        # SQL query to insert data
        insert_query = sql.SQL("""
        INSERT INTO courses ( course_heading, course_href, interested_geeks_count, course_rating, course_price)
        VALUES (%s, %s, %s, %s, %s)
        """)

        cursor.execute(create_table_query)

        # Execute the query for each course
        for course_data in all_courses_data:
            cursor.execute(insert_query, course_data)
        
        # Commit the transactions
        conn.commit()
        print("Data inserted successfully")

    except Exception as e:
        print(f"Database error: {e}")
        if conn:
            conn.rollback()

    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()

scrap_data_and_add_to_database()
