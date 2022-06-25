--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2737

CREATE TABLE lawyers(
  register INTEGER PRIMARY KEY,
  name VARCHAR(255),
  customers_number INTEGER
 );
  
  
 INSERT INTO lawyers(register, name, customers_number)
 VALUES (1648, 'Marty M. Harrison', 5),
	(2427, 'Jonathan J. Blevins', 15),
	(3365, 'Chelsey D. Sanders', 20),
	(4153, 'Dorothy W. Ford', 16),
	(5525, 'Penny J. Cormier', 6);

  
  /*  Execute this query to drop the tables */
  -- DROP TABLE lawyers; --
(select lawyers.name, lawyers.customers_number from lawyers
order by lawyers.customers_number desc limit 1)

union all

(select lawyers.name, lawyers.customers_number from lawyers
order by lawyers.customers_number asc limit 1)

union all

(select cast('Average' as varchar(255)),cast (round(avg(lawyers.customers_number),1) as integer) from lawyers);