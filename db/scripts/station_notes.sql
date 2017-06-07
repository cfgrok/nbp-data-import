select survey_id, string_agg(station_note, E'\n\n') as notes
from (

select s.survey_id, 'Station ' || s.number || E'\n\nWeather: ' || coalesce(we.name, '') || E'\nWind: ' || coalesce(wi.name, '') || E'\nNotes: ' || coalesce(s.notes, '') as station_note
from stations s
left join weathers we
on s.weather_id = we.id
left join winds wi
on s.wind_id = wi.id
order by s.survey_id, s.number, s.legacy_id

) as station_notes
group by survey_id

/*select survey_id, count(*)
from stations
group by survey_id
having count(*) = 1
order by survey_id*/
