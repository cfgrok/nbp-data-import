-- SELECT DISTINCT survey_id, number, weather_id, wind_id FROM stations ORDER BY survey_id, number


select * from stations where survey_id in (439, 1604, 2539, 2832) order by survey_id, legacy_id

-- select * from surveys where id = 31

/*
select survey_id, number, count(number)
from stations
group by survey_id, number
having count(number) > 2
order by survey_id, number
*/

-- select * from observations where station_id in (17106, 17107, 17108)


-- legacy IDs to delete: 21080, 21081, 21082, 26129, 26130, 26131, 19735
-- 15926, 15927, 15928, 15929, 19729, 19730, 19731, 19732, 19733, 19734, 19735, 19833, 19834, 19835, 19836, 19837, 19838, 19839, 19840, 19841
-- legacy IDs to update: 22056 - set station to 4