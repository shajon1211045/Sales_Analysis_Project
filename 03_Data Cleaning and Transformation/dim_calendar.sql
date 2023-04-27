
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] as Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  --,[WeekNumberOfYear]
  , 
  [EnglishMonthName] as Month --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] as Month_no, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019;
