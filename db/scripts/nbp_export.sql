select su.year as "Year",
  trim(to_char(to_timestamp(to_char(su.month, '999'), 'MM'), 'Month')) as "Month",
  su.survey_date as "Survey Date",
  s.start_time as "Start Time",
  si.name as "Site",
  l.name as "Loop",
  s.number as "Station",
  p.name as "Precipitation",
  we.name as "Weather",
  wi.name as "Wind",
  t.common_name as "Species",
  o.seen_count as "Seen",
  o.heard_count as "Heard",
  o.flyover_count as "Fly",
  n.name as "Nest",
  s.legacy_id as "Legacy ID",
  o.legacy_id as "Legacy LID"
from observations o
join taxons t on o.taxon_id = t.id
join stations s on o.station_id = s.id
join nest_codes n on o.nest_code_id = n.id
join surveys su on s.survey_id = su.id
left join precipitations p on su.precipitation_id = p.id
left join weathers we on su.weather_id = we.id
left join winds wi on su.wind_id = wi.id
join loops l on su.loop_id = l.id
join sites si on l.site_id = si.id
order by su.year desc, su.month desc, si.name, l.name, s.number, o.legacy_id
