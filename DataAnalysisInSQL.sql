WITH hotels as (

SELECT * FROM dbo.['2018$']
UNION 
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$']
) 

SELECT * FROM hotels H
LEFT JOIN dbo.market_segment$ M
ON H.market_segment = M.market_segment
LEFT JOIN meal_cost$ C
ON C.meal = H.meal  

-- SELECT * FROM market_segment$;
-- SELECT * FROM meal_cost$;

-- First Analysis 
--SELECT arrival_date_year, hotel,
--CAST(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr) as NUMERIC(15,2)) AS Revenue
--FROM hotels
--GROUP BY arrival_date_year, hotel;