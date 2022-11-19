# Northwind Analytics
Northwind Traders is a fictitious company created by Microsoft for the purposes of demonstrating the database capabilities of Microsoft Access and then later for SQL 
Server. Since then, it has also been used by numerous companies as a sample database to demonstrate how their development tools work. In this project, I used Northwind
database to answer various business questions that may occur in real project. In this project, I used Northwind database to answer around 30 business questions using 
SQL code within python.

The first stage of this project was data preparation. The data was initially in an Access database, however, when connected to Python, the was a descrepancy in the 
column names between the retrieved SQL table and Access Graphic User Interface. TO avoid issues when joining tables, I saved the tables from Access databaseto CSV 
files, etablished new PostgreSQL database and tables, and populated the tables from the CSV files. The detailed steps are in "1-Northwind_Data_Preparation.ipynb" 
notebook.


The second stage was querying the tables in the PostgreSQL for analysis and answerng the business questions.