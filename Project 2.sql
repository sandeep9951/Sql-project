--Get all the details from the person table including email ID, phone number, and phone number type 
use AdventureWorks2012 

select A.*, B.[EmailAddress], C.[PhoneNumber],D.[PhoneNumberTypeID] from [Person].[Person] as A
inner join [Person].[EmailAddress] AS B
ON A.[BusinessEntityID] = B.[BusinessEntityID] 
inner join[Person].[PersonPhone] AS C
ON A.[BusinessEntityID] = C.[BusinessEntityID]
inner join [Person].[PhoneNumberType] AS D
ON C.PhoneNumberTypeID = D.[PhoneNumberTypeID]

--Get the details of the sales header order made in May 2011 

select * from [Sales].[SalesOrderHeader]
where YEAR(OrderDate) ='2011'and Month(Orderdate)='5'

-- Get the details of the sales details order made in the month of May 2011 

select * from [Sales].[SalesOrderHeader] AS A
inner join [Sales].[SalesOrderDetail] AS B
ON A.SalesOrderID = B.SalesOrderID
WHERE YEAR(OrderDate) ='2011'and Month(Orderdate)='5'

-- Get the total sales made in May 2011 

select SUM(TotalDue) as TotalSales from [Sales].[SalesOrderHeader]
where YEAR(OrderDate) ='2011'and Month(Orderdate)='5'

-- Get the total sales made in the year 2011 by month order by increasing sales 

select * from [Sales].[SalesOrderHeader]
where YEAR(OrderDate) ='2011' 
order by MONTH(OrderDate)

-- Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'
select * from [Sales].[Customer]
select * from [Sales].[SalesOrderHeader]

select A.TotalDue,B.FirstName, B.LastName  from [Sales].[SalesOrderHeader] AS A
inner join  [Person].[Person] AS B
ON A.[rowguid]= B.[rowguid]
where FirstName='Gustavo' and LastName ='Achong'

