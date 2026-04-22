CREATE OR REPLACE TABLE
`bellabeat-usage-data-analk.Bellabeat_data_usage.SleepDay_Cleaned`
AS

SELECT DISTINCT *
FROM `bellabeat-usage-data-analk.Bellabeat_data_usage.SleepDay`;

# I noticed multiple duplicates in this specific table so I created a new table with only distinct values and IDs. 