use Pooj
 create table users (
      userid int primary key,
	  email varchar(20) unique,
	  name varchar(50)
 )

 create table books(
      product_id int primary key,
	  title varchar(50),
	  price float
 )

 create table orders (
      order_no int primary key,
	  userid int,
	  product_id int ,
	  foreign key (userid) references users(userid),
	  foreign key (product_id) references books(product_id)

 )

 insert into users values(1,'callmebhai@gmail.com','Gopal'),
 (2,'toxicmanji@gmail.com','Manjit'),
 (3,'kalajadu@gmail.com','SoumyaDeep'),
 (4,'vimal@gmail.com','Jayasai'),
 (5,'ghostlaugh@gmail.com','Namitha')

 select * from users

 insert into books values
 (101,'MSSQL', 100.0),
 (102, 'Half Girlfriend', 699.0),
 (103, 'Black majic', 700.0),
 (104, 'Marfa', 2000.0),
 (105, 'How to laugh' , 2001.0)

  select * from books

  insert into orders values
  (401,1,101),(402,2,103),(403,2,102),(404,3,103),(405,3,104),(406,4,102),(407,5,102),(408,5,105)

  select * from orders

    select * from users

	  select * from books

  select t1.name,t3.title from users t1 inner join orders t2 on t1.userid = t2.userid  inner join books t3 on t3.product_id= t2.product_id 
  where t3.title = 'Black majic'

   select * from users t1 inner join orders t2 on t1.userid = t2.userid  inner join books t3 on t3.product_id= t2.product_id 
  where t3.price in (select MAX(price) from books)

  /*find all the books all the users and all the order*/

  select * from orders o inner join users u on  o.userid= u.userid inner join books b on b.product_id = o.product_id

  /*find all orders */
  select * from orders o inner join books b on o.product_id= b.product_id

  /* find particular user who has ordered these books*/
  select title,name from books b inner join orders o on b.product_id = o.product_id inner join users u on u.userid= o.userid where title='Half Girlfriend'

  /*Find books users has order*/
  select title,name from books b inner join orders o on b.product_id = o.product_id inner join users u on u.userid= o.userid

  /*find total price of books user has order */
   select name,SUM(price) as totalPrice from books b inner join orders o on b.product_id = o.product_id inner join users u on u.userid= o.userid group by name

   /*find the most valuable user*/
      select top 1 name,SUM(price) as totalPrice from books b inner join orders o on b.product_id = o.product_id inner join users u on u.userid= o.userid group by name order by totalPrice desc
	
	/*find range of books from high to low */
	select * from books ORDER BY price DESC;

	SELECT TOP 1 * FROM books ORDER BY price DESC;

	SELECT TOP 1 * FROM books ORDER BY price ;

	SELECT * FROM books ORDER BY product_id DESC;