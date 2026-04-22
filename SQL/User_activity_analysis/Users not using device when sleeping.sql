SELECT 
  s.Id,
  COUNT(*) AS times_under_180,
  AVG(s.TotalMinutesAsleep) AS avg_minutes_asleep
FROM `bellabeat-usage-data-analk.Bellabeat_data_usage.DailyActivity` a
JOIN `bellabeat-usage-data-analk.Bellabeat_data_usage.SleepDay_Cleaned` s
ON s.Id = a.Id
WHERE s.TotalMinutesAsleep < 240
GROUP BY s.Id
ORDER BY times_under_180 DESC;