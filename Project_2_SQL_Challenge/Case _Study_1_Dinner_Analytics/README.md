![](../assets/dinner_shop.png)

## Problem Statement
### The owner of a dinner restaurant wants to use the data to answer a few simple questions about his customers, especially about their visiting patterns, how much money they’ve spent, and which menu items are their favourite.


### Having this deeper connection with his customers will help him deliver a better and more personalised experience for his loyal customers. He offered a subscription program to his cutomers through which they can gain points which can be used later to get a discount on meals. In return, subscribed customers should fill some personal information in a survey form.  He plans on using these insights to help him decide whether he should expand the existing customer loyalty program — additionally he needs help to generate some basic datasets so his team can easily inspect the data without needing to use SQL.


### Assumptions:
### 1. Customers can buy a meal (product) before registering for the subsrciption program.
### 2. A customer may buy mroe than one meal in the same day (invited his/her firend over diner)

## ERD
![](../assets/EDR.PNG)

### The data set contains the following 3 tables which you may refer to the relationship diagram below to understand the connection.

#### - sales
#### - members
#### - menu

## Questions Answered:

### 1. What is the total amount each customer spent at the restaurant?
### 2. How many days has each customer visited the restaurant?
### 3. What was the item(s) from the menu purchased by each customer in their first day?
### 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
### 5. Which item was the most popular for each customer?
### 6. Which item was purchased first by the customer after the day they became a member?
### 7. Which item was purchased just before the customer became a member?
### 8. What is the total items and amount spent for each member before they became a member?
### 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier — how many points would each customer have?
###  10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not  just sushi - how many points do customer A and B have at the end of January? 
