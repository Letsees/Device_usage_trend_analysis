SELECT
  a.Id,
  AVG(a.TotalSteps) as avg_steps,
  AVG(s.TotalMinutesAsleep) / 60 as avg_minutes_sleep
FROM `bellabeat-usage-data-analk.Bellabeat_data_usage.DailyActivity` a
JOIN `bellabeat-usage-data-analk.Bellabeat_data_usage.SleepDay_Cleaned` s
ON a.Id = s.Id
group by a.Id
order by avg_steps desc