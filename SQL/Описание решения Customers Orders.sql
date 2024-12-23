Необходимо написать запросы, которые будут выводить следующую информацию:	SQL-код																								
1. Вывести названия всех компаний, которые не выполнили заказ с 15.11.1996 – 18.02.1997	
SELECT CompanyName from Customers where CustomerID IN (SELECT CustomerID from Orders 
WHERE OrderDate < '1996-11-15' OR OrderDate > '1997-02-18'); или SELECT CompanyName from 
Customers where CustomerID IN (SELECT CustomerID from Orders WHERE OrderDate NOT BETWEEN '1996-11-15' 
AND '1997-02-18');																								
2. Вывести названия компаний поставщиков, которые находятся в México D.F.;
SELECT companyname from Customers where City = 'México D.F.';																								
3. Вывести только те заказы, которые были оформлены с 12.12.1996 по 18.02.1997;
SELECT * FROM Orders where OrderDate >='1996-12-12' AND OrderDate < '1997-02-18';
если дата 18.02.1997 включительно, то код будет Select * FROM Orders where OrderDate >='1996-12-12' 
AND OrderDate <= '1997-02-18';																								
4. Вывести только тех заказчиков, название компании которых начинаются с ‘An’;
SELECT * FROM Customers Where CompanyName LIKE 'An%';																								
5. Вывести названия компаний и заказы, которые они оформили, с суммой заказа более 17000. 
Использовать соединение таблиц.
SELECT Customers.CompanyName, orders.OrderID, orders.CustomerID, orders.OrderDate, orders.OrderSum
from Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
WHERE Orders.OrderSum > 17000;																								
6. Вывести следующие колонки: имя поставщика, сумма заказа. Результаты отсортировать по поставщикам в порядке
убывания
SELECT Customers.CompanyName, orders.ordersum
from orders
JOIN customers on orders.customerid = customers.customerid
ORDER BY Customers.CompanyName DESC;																								
7. Вывести следующие колонки: имя поставщика, дата заказа. Вывести  таким образом, чтобы все заказчики из
таблицы 1 были показаны в таблице результатов.
SELECT orders.CustomerID, orders.OrderDate, Customers.CompanyName, Customers.Address, Customers.City,
Customers.Country
FROM orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;																								
