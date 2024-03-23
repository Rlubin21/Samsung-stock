-- Inspect the data --
SELECT * FROM Portfollio.samsung;

-- The highest closing price for Samsung Electronics stock--
SELECT MAX(`Adj Close`) AS Highest_Closing_Price
FROM Portfollio.samsung;

-- How many trading sessions had the closing price higher than-- 
-- the opening price? --
SELECT COUNT(*)
FROM portfollio.samsung
WHERE 'ADJ Close' > Open;

-- What was the average volume of shares traded per day during --
-- the period?--
SELECT AVG(Volume) AS AverageVolume
FROM portfollio.samsung;

-- What was the highest difference between the high and low --
-- prices in a single trading session? --
SELECT MAX(High - Low) AS Highest_Difference
FROM portfollio.samsung;

-- How many days did the closing price fall below $100? --
SELECT COUNT(DISTINCT Date) AS Days_Below_Threshold
FROM portfollio.samsung
WHERE 'Adj Close' < 100;

-- What was the total volume of shares traded during the period? --
SELECT SUM(Volume) AS TotalVolume
FROM portfollio.samsung;

