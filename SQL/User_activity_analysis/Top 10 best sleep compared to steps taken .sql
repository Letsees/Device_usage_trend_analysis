SELECT 
  s.Id,
  AVG(s.TotalMinutesAsleep) AS average_minutes_asleep,
  AVG(a.TotalSteps) AS Average_steps
FROM `bellabeat-usage-data-analk.Bellabeat_data_usage.SleepDay_Cleaned` s
JOIN `bellabeat-usage-data-analk.Bellabeat_data_usage.DailyActivity` a
ON s.Id = a.Id
GROUP BY s.Id
ORDER BY average_minutes_asleep DESC
LIMIT 10;

#The users who gets the best sleep often range between 1853 to 9794 steps a day 