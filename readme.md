## Introduction
This project is used to extract the courses data available on Geeksforgeeks website, store it in postgreSQL and generate a csv file using the data stored in the database.

## Prerequisites

Before you begin with this project, ensure you have the following prerequisites installed and set up:

### 1. Python Environment

Make sure you have Python installed on your system. You can download and install Python from the official Python website: https://www.python.org/downloads/

Install the PIP to install python packages 

Download the script, from https://bootstrap.pypa.io/get-pip.py.

Open a terminal/command prompt, cd to the folder containing the get-pip.py file and run:
```bash
python3 get-pip.py
```

### 2. Selenium WebDriver

This project utilizes Selenium WebDriver for automated web testing. You can install Selenium using pip:
```bash
pip install selenium
```
Additionally, you'll need to install a WebDriver compatible with your browser. We recommend using ChromeDriver for Google Chrome, which can be easily installed using `webdriver_manager`:
```bash
pip install webdriver_manager
```
### 3. PostgreSQL

This project interacts with a PostgreSQL database, so you'll need to have PostgreSQL installed on your system. You can download and install PostgreSQL from the official PostgreSQL website: https://www.postgresql.org/download/

### 4. psycopg2

To interact with PostgreSQL from Python, you'll need to install the psycopg2 library:
```bash
pip install psycopg2
```
### 5. Web Browser

Ensure you have a compatible web browser installed on your system. This project primarily supports Google Chrome, but you can adjust the WebDriver and configurations to work with other browsers as well.

## Setup

### Step 1 : Clone the repo:

Use command:
```bash
git clone https://github.com/abhi-146/nestorbird_python_assessment.git
```
### Step 2: Create the database

Use command:
```bash
psql 
```

The above command will enter into postreSQL shell. Then use command:
```bash
CREATE DATABASE databse_name;
```
cd to the directory where main.py and fetch.py exists.

### Step 3: main.py
This file will fetch the data from the database and generate a csv file using the fetched data.

Use command to run:
```bash
python3 main.py 
```
### Step 4: fetch.py
This file will fetch the courses data from the Geeksforgeeks website and store in postgreSQL databse.

Use command to run:
```bash
python3 fetch.py 
```

### Import the database (optional)
Import the database using db.sql file.

Use command: 
```bash
psql -h host -d database -U username path/db.sql
```

##  Note 
You need to add your credentials  while connecting to databse in main.py and fetch.py

Example:
```bash
# Connect to your PostgreSQL database
conn = psycopg2.connect(
    database="nestorbird",
    user="zain",
    host='localhost',
    password="***",
    port=5432
)
```
