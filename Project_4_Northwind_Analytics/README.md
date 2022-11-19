![](assets/logo2.png)
![](assets/ERD.PNG)
# Northwind Analytics
Northwind Traders is a fictitious company created by Microsoft for the purposes of demonstrating the database capabilities of Microsoft Access and then later for SQL 
Server. Since then, it has also been used by numerous companies as a sample database to demonstrate how their development tools work. Northwind database consists of
8 tables which are Customers, Employees, Suppliers, Shippers, Categroies, Products, Orders and Order_details in resemblance of typlical supply chain company business.
In this project, I used Northwind database to answer various business questions that may occur in real project.

The first stage of this project was data preparation. The data was initially in an Access database, however, when connected to Python using pyodbc library, the was a 
descrepancy in the  column names between the retrieved SQL table and Access Graphic User Interface. TO avoid issues when joining tables, I saved the tables from Access
databaseto CSV  files, etablished new PostgreSQL database and tables, and populated the tables from the CSV files. The detailed steps are in "1-Northwind_Data_Preparation.ipynb" 
notebook.


The second stage was querying the tables in the PostgreSQL for analysis and answerng the business questions. In this stage, I used psycopg2 library to connect to PostgreSQL
database, then, I used pandas to show the results of the queries in the form of dataframes. The business questions are:

Q1. We’d like to see just the FirstName, LastName, and HireDate of all the employees with the Title of Sales Representative and are in USA?

Q2. Show all the orders placed by the Employee with the ID of 5. Order the records based on their history. Save the records in a csv file with the title a2?

Q3. In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers whose ContactTitle is not Marketing Manager?

Q4. we’d like to see the ProductID and ProductName for those products where the ProductName includes the string “Schokolade”?

Q5. We want to show all the orders from any Latin American country which includes the countries of Brazil, Mexico, Argentina, Venezuela?

Q6. How many customers do we have in the Customers in the company?

Q7. Show the details of the first order ever made in the Orders table?

Q8. Show a list of all the different values in the Customers table for ContactTitles. Also include a count for each ContactTitle and order the records based on the count descendingly?

Q9. We’d like to show, for each product, the associated Supplier. Show the ProductID, ProductName, and the CompanyName of the Supplier. Sort by ProductID?

Q10. We’d like to show a list of the Orders that were made, including the Shipper that was used. Show the OrderID, OrderDate (date only), and CompanyName of the Shipper, and sort by OrderID. Show only those rows with an OrderID of less than 10300?

Q11. For this problem, we’d like to see the total number of products in each category. Sort the results by the total number of products, in descending order?

Q12. What products do we have in our inventory that should be reordered? For now, just use the fields UnitsInStock and ReorderLevel, where UnitsInStock is less than the ReorderLevel, ignoring the fields UnitsOnOrder and Discontinued. Order the results by ProductID?

Q13. We need to incorporate these fields— UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued—into our calculation. We’ll define “products that need reordering” with the following: UnitsInStock plus UnitsOnOrder are less than or equal to ReorderLevel. The Discontinued flag is false?

Q14. A salesperson for Northwind is going on a business trip to visit customers, and would like to see a list of all customers, sorted by region, alphabetically. However, he wants the customers with no region (null in the Region field) to be at the end, instead of at the top, where you’d normally find the null values. Within the same region, companies should be sorted by CustomerID?

Q15. Some of the countries we ship to have very high freight charges. We'd like to investigate some more shipping options for our customers, to be able to offer them lower freight charges. Return the three ship countries with the highest average freight overall, in descending order by average freight?

Q16. We're continuing on the question above on high freight charges. Now, instead of using all the orders we have, we only want to see the top order from the year 1995?

Q17. We now want to get the three ship countries with the highest average freight charges. But instead of filtering for a particular year, we want to use the last 12 months of order data, using as the end date the last OrderDate in Orders?

Q18. We're doing inventory, and need to show information like the below, for all orders. Sort by OrderID and Product IDderDate in Orders?

Q19. There are some customers who have never actually placed an order. Show these customers' contact titles?

Q20. One employee (Margaret Peacock, EmployeeID 4) has placed the most orders. However, there are some customers who've never placed an order with her. Show the information of only those customers who have never placed an order with her and reside in USA or Canada?

Q21. We want to send all of our high-value customers a special VIP gift. We're defining high-value customers as those who've made at least 1 order with a total value (not including the discount) equal to $10,000 or more. We only want to consider orders made in the year 1996?

Q22. The manager has changed his mind. Instead of requiring that customers have at least one individual orders totaling $10,000 or more, he wants to define high-value customers as those who have orders totaling $15,000 or more in 2016. How would you change the answer to the problem above?

Q23. Change the above query to use the discount when calculating high-value customers. Order by the total amount which includes the discount?

Q24. At the end of the month, salespeople are likely to try much harder to get orders, to meet their month-end quotas. Show all orders made on the last day of the month. Order by EmployeeID and OrderID?

Q25. The Northwind mobile app developers are testing an app that customers will use to show orders. In order to make sure that even the largest orders will show up correctly on the app, they'd like some samples of orders that have lots of individual line items. Show the 10 orders with the most line items, in order of total line items?

Q27. Based on the previous question, we now want to show details of the order, for orders that match the above criteria?

Q28. Some customers are complaining about their orders arriving late. Which orders are late?

Q29. Some salespeople have more orders arriving late than others. Maybe they're not following up on the order process, and need more training. Which salespeople have the most orders arriving late?

Q30. The VP of sales, has been doing some more thinking some more about the problem of late orders. He realizes that just looking at the number of orders arriving late for each salesperson isn't a good idea. It needs to be compared against the total number of orders per salesperson and show the percentage of late orders?


