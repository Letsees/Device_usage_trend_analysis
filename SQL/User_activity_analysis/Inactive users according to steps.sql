SELECT 
  COUNT(*) AS users_with_low_activity
FROM (
  SELECT 
    Id,
    AVG(TotalSteps) AS avg_steps
  FROM `bellabeat-usage-data-analk.Bellabeat_data_usage.DailyActivity`
  GROUP BY Id
)
WHERE avg_steps BETWEEN 0 AND 5000;

#24% of users are below the average steps taken per day (could be inactive users)