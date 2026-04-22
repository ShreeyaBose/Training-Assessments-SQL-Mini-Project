create database freshmart;
use freshmart;
create table categories(cid int primary key, cname varchar(50));
create table products(pid int primary key, pname varchar(100), cid int, expdate date, stcount int, price decimal(10,2), foreign key(cid) references categories(cid));
create table salestransaction(tid int primary key, pid int, quantity int, tdate date, foreign key(pid) references products(pid));
insert into categories values(1,'Dairy'),(2, 'Snacks'),(3, 'Beverages'),(4, 'Bakery'),(5,'Frozen Foods');
insert into products values
(101, 'Milk', 1, '2026-04-25', 60, 50.00),
(102, 'Cheese', 1, '2026-05-15', 30, 120.00),
(103, 'Butter', 1, '2026-04-24', 55, 90.00),
(104, 'Yogurt', 1, '2026-04-28', 70, 40.00),
(105, 'Chips', 2, '2026-05-10', 100, 20.00),
(106, 'Biscuits', 2, '2026-06-01', 80, 25.00),
(107, 'Nachos', 2, '2026-04-29', 65, 35.00),
(108, 'Juice', 3, '2026-04-23', 90, 45.00),
(109, 'Soda', 3, '2026-07-01', 120, 30.00),
(110, 'Energy Drink', 3, '2026-05-20', 40, 75.00),
(111, 'Bread', 4, '2026-04-24', 85, 35.00),
(112, 'Cake', 4, '2026-04-26', 20, 300.00),
(113, 'Cookies', 4, '2026-05-05', 60, 150.00),
(114, 'Frozen Pizza', 5, '2026-08-01', 25, 250.00),
(115, 'Ice Cream', 5, '2026-06-10', 75, 200.00);
insert into salestransaction values
(1, 101, 10, '2026-04-20'),
(2, 104, 12, '2026-04-18'),
(3, 108, 18, '2026-04-21'),
(4, 111, 14, '2026-04-22'),
(5, 101, 8, '2026-03-05'),
(6, 105, 20, '2026-03-10'),
(7, 106, 15, '2026-03-15'),
(8, 108, 10, '2026-03-18'),
(9, 112, 3, '2026-03-22'),
(10, 113, 9, '2026-03-25'),
(11, 102, 5, '2026-02-25'),
(12, 103, 8, '2026-02-28'),
(13, 110, 6, '2025-12-15'),
(14, 105, 10, '2025-12-10'),
(15, 108, 4, '2025-11-20');
select * from categories;
select * from products;
select * from salestransaction;
select pid,pname,expdate,stcount from products where expdate between '2026-04-22' and '2026-04-29' and stcount>50;
select p.pid,p.pname from products p left join salestransaction s on p.pid=s.pid and s.tdate>='2026-02-21' where s.pid is null;
select c.cname,sum(s.quantity * p.price) as totalrevenue from salestransaction s join products p on s.pid=p.pid join categories c on p.cid=c.cid where s.tdate between '2026-03-01' and '2026-03-31' group by c.cname order by totalrevenue desc;

