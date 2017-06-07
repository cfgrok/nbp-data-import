-- select loop, station, count(station), min(surveydate), max(surveydate) from tblNeighborhoodBirdProjectData where site = 'Discovery Park' group by site, loop, station order by site, loop, station

-- select site, loop, max(station) from tblNeighborhoodBirdProjectData group by site, loop order by site, loop

/* select loop as `Loop Name`
        --, station, id
        , count(station) as `Station Count`
        , surveydate as `Survey Date`, observer1 as `Primary Observer`, observer2
from tblNeighborhoodBirdProjectData
where site = 'Discovery Park' and loop like 'South%'
group by loop, surveydate, observer1, observer2
order by surveydate, loop --, station, id
*/


/* select * from tblNeighborhoodBirdProjectData
where site = 'Discovery Park' and loop like 'Beaches%'
--surveydate = '2003-11-01 00:00:00'
order by surveydate, site, loop, id, station */

-- select distinct site, loop from tblNeighborhoodBirdProjectData order by site, loop

select site, loop, surveydate, station, count(station)
from tblNeighborhoodBirdProjectData
group by site, loop, surveydate, station
having count(station) > 1
order by site, loop, surveydate, station

