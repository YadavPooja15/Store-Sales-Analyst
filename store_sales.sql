
   # Create Query For Sales Analyst

/* To See All Records */
select * from sales;

/* Drop Unwanted Column */
alter table sales drop column ï»¿index;
alter table sales drop column sku,drop column currency,drop column ship_country,drop column b2b;

/* Total Sales Amount */
select sum(amount) from sales;

/* Total Order */
select count(order_id) from sales;

/* Total Quantity */
select sum(qty) from sales;

/* Channel Wise Total Sale Amount */
select channel,sum(amount) from sales group by channel;

/* Gender Wise Total Sale Amount */
select gender,sum(amount) from sales group by gender;

/* Category Wise Total Sale Amount */
select category,sum(amount) from sales group by category;

/* Status Wise Total Sale Amount */
select status,sum(amount) from sales group by status;

/* Add Age Group Column */
alter table sales add column age_group varchar(30);

/* Create Group in Age Column */
update sales set age_group=(IF(age>50,"Senior",IF(age>=30,"Adult","Teenager")));

/* Age Group and Gender Wise Total Amount */
select age_group,gender,sum(amount) from sales group by age_group,gender;

/* Top 5 ship state wise Total sale amount */
select ship_state,sum(amount) amt from sales  group by ship_state order by amt desc limit 5;

/* Butoom 5 ship state wise Total sale amount */
select ship_state,sum(amount) amt from sales  group by ship_state order by amt limit 5;



