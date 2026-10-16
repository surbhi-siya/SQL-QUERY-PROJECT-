

Select * from Book1
WHERE Genre='Fiction' ;

select *from Book1 
WHERE Published_year >1950;

select *from Customers
 WHERE country = 'canada';

 select * from Orders
 WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30'

 select SUM(stock) as Total_stock 
 from Book1;

 select *from Book1 
 order by Price desc;

  select * from Orders
  WHERE  Quantity>1; 

  select * from Orders
   WHERE Total_Amount >20

select *from Book1 
Select DISTINCT Genre from Book1;


select *from Book1 
Order by stock ASC ;

Select SUM (Total_Amount) as revenue
from orders;

-- ADVANCE QUERY 

select *from  orders ;
SELECT b.Genre,SUM(o.quantity) AS Total_Book_sold
from orders o 
Join Book1 b ON o.book_id =b.book_id 
group by b.genre ;

select AVG (price) AS Average_Price 
From Book1
Where Genre =  'Fantasy'

Select o.Customer_id, c.name ,COUNT(o. order_id) AS ORDER_COUNT 
From orders o
Join Customers c ON o.Customer_id= c.Customer_id 
group by o.Customer_id , c.name
HAVING COUNT (order_id)>=2;

 select o.Book_id, b.title,count (o.order_id) AS ORDER_COUNT
 From orders o
 Join book1 b ON o.book_id = b.book_id
 Group by o. book_id  , b.title
 order by ORDER_COUNT DESC;

Select *from Book1
WHERE genre ='Fantasy'
order by price desc ;

select b.author , SUM(o.quantity)AS Total_Book_Sold
from orders o 
Join book1 b ON o.book_id=b.book_id
group by b.author

select DISTINCT c.city ,total_amount
From orders o 
join customers c ON o.customer_id=c. customer_id 
WHERE o.total_amount>30 ;

select c.customer_id ,c.name,SUM(o.total_amount)AS Total_spent
From orders o
Join customers c ON o.customer_id =c.customer_id
group by c.customer_id,c.name;

select b.book_id,b.title,b.stock , COALESCE (SUM(quantity),0) AS order_quantity
from Book1 b
left join orders o ON b.book_id=o.book_id
GROUP BY b.book_id;