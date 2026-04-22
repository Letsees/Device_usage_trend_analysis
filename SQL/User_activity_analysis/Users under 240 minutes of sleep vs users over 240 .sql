WITH sleep_flag AS (
  SELECT 
    Id,
    CASE 
      WHEN TotalMinutesAsleep <= 240 THEN 'Under 240'
      ELSE 'Over 240'
    END AS sleep_group
  FROM `bellabeat-usage-data-analk.Bellabeat_data_usage.SleepDay_Cleaned`
)

SELECT 
  sleep_group,
  COUNT(DISTINCT Id) AS user_count
FROM sleep_flag
GROUP BY sleep_group;