SELECT 
	c.customerkey AS CustomerKey
    --,[GeographyKey]
    --,[CustomerAlternateKey]
    --,[Title]
    ,c.firstname AS [First Name]
    --,[MiddleName]
    ,c.lastname AS [LastName]
	,c.firstname + ' ' + c.lastname AS [Full Name]
    --,[NameStyle]
    --,[BirthDate]
    --,[MaritalStatus]
    --,[Suffix]
    ,CASE c.gender When 'M' THEN 'Male' When 'F' THEN 'Female' END AS Gender
    --,[EmailAddress]
    --,[YearlyIncome]
    --,[TotalChildren]
    --,[NumberChildrenAtHome]
    --,[EnglishEducation]
    --,[SpanishEducation]
    --,[FrenchEducation]
    --,[EnglishOccupation]
    --,[SpanishOccupation]
    --,[FrenchOccupation]
    --,[HouseOwnerFlag]
    --,[NumberCarsOwned]
    --,[AddressLine1]
    --,[AddressLine2]
    --,[Phone]
    ,c.datefirstpurchase AS DateFirstPurchase
    --,[CommuteDistance]
	,g.city AS [Customer City] 
FROM 
	dbo.DimCustomer AS c
	LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY 
	CustomerKey ASC

