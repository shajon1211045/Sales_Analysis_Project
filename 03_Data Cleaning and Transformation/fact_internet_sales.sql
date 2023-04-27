
SELECT 
       [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      ,Left([OrderDate],11) as OrderDate
      ,left([DueDate],11) as DueDate
      ,left([ShipDate],11) as ShipDate
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we always only bring four years of date from extraction.
  ORDER BY OrderDateKey ASC;