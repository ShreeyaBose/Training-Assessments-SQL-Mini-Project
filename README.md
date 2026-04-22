# Training-Assessments-SQL-Mini-Project
FreshMart Inventory Optimization System

Problem Statement:
The Inventory Manager at FreshMart needs a Stock Health Report to:
1. Identify products nearing expiration
2. Detect Dead Stock (products not sold in the last 60 days)

Objective:
To design a database and write SQL queries that help optimize inventory by:
1. Tracking expiring products
2. Identifying non-moving stock
3. Analyzing revenue contribution by category

Database Schema:
1. Categories: Stores product categories
* `cid` (Primary Key)
* `cname` (Category Name)

2. Products: Stores product details
* `pid` (Primary Key)
* `pname` (Product Name)
* `cid` (Foreign Key → Categories)
* `expdate` (Expiry Date)
* `stcount` (Stock Count)
* `price` (Product Price)

3. SalesTransaction: Stores sales data
* `tid` (Primary Key)
* `pid` (Foreign Key → Products)
* `quantity` (Units sold)
* `tdate` (Transaction Date)

Reports:
1. Expiring Soon Products

Find products:
* Expiring within the next **7 days**
* Having **high stock (>50)**

2. Dead Stock Analysis

Identify products:
* With **no sales in the last 60 days**

3. Revenue Contribution by Category

Analyze:
* Which category generated the **highest revenue last month**

Tech Stack: MySQL Workbench 

How to Run:

1. Open MySQL Workbench / CLI
2. Execute the `.sql` script step by step:
   a. Create database
   b. Create tables
   c. Insert data
   d. Run queries
3. Verify results using sql commands.

Output:
