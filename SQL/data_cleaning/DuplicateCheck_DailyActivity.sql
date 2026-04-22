SELECT Id, ActivityDate, 
COUNT(*)
FROM `bellabeat-usage-data-analk.Bellabeat_data_usage.DailyActivity`
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;