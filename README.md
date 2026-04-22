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
1. Database creation:
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/f38a9bc7-7c80-430b-b9b5-a8c0d44f1220" />

2. Table Creation:
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5f230b1b-2311-45ed-aa1c-468654064b45" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4f9c3f6e-7ed3-4c41-a4e3-c155ce121c0f" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/194199ed-5824-4e51-9837-dbc819f02968" />

3. Write a query to find all products where the ExpiryDate is within the next 7 days but StockCount is greater than 50.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a1844ef1-ac03-4ed5-a772-557d93dcfd51" />

4. Identify products that exist in the Products table but have zero entries in the SalesTransactions table for the last 2 months.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/05695363-82eb-46e3-95c2-0eb3e720df5b" />

5. Write a query using SUM and GROUP BY to show which Category generated the most revenue last month.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/2fd0bdb6-7661-4767-842e-a535d6666648" />


