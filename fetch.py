import psycopg2
import csv

# Connect to your PostgreSQL database
conn = psycopg2.connect(
    database="nestorbird",
    user="zain",
    host='localhost',
    password="pass",
    port=5432
)

# A cursor serves as a handle for the execution of SQL queries in the database.
cursor = conn.cursor()

# Query to retrieve column names from the courses table
cursor.execute("SELECT column_name FROM information_schema.columns WHERE table_name = 'courses';")

# Fetch all column names
column_names = [row[0] for row in cursor.fetchall()]

# Execute SELECT query to fetch data
cursor.execute("SELECT * FROM courses")

# Fetch all rows from the cursor
all_courses_data = cursor.fetchall()

# Print fetched data
for row in all_courses_data:
    print(row)

# Close the cursor and connection
cursor.close()
conn.close()


# Write fetched data to CSV file
with open('data.csv', 'w', newline='') as csvfile:
    csv_writer = csv.writer(csvfile)
    # Write header
    csv_writer.writerow(column_names)
    # Write data
    csv_writer.writerows(all_courses_data)

print("Data written to data.csv successfully")