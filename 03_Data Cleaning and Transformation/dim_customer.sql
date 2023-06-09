
SELECT 
       c.[CustomerKey] as [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] as [First_name]
      --,[MiddleName]
      ,c.[LastName] as [Last_name]
      --,[NameStyle]
	  ,c.[FirstName] +  ' ' + c.[LastName] as [Full_name]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,Case c.[Gender] When 'M' Then 'Male' When 'F' Then 'Female' End as [Gender]
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
      ,c.[DateFirstPurchase] as [Date_of_first_purchase]
      --,[CommuteDistance]
	  ,g.city as Customer_city 
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  Left Join [dbo].[DimGeography] as g 
  ON c.[GeographyKey] = g.[GeographyKey]
  ORDER BY [CustomerKey] ASC;