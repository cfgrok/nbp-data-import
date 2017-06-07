-- delete survey records w/o data
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID IN (19552, 20889, 21810, 22476, 22563, 22966, 23585);

-- delete erroneous survey & species records
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID IN (21080, 21081, 21082);
DELETE FROM tblNHBPSpeciesData WHERE ID IN (21080, 21081, 21082);

-- update survey record w/ missing date
UPDATE tblNeighborhoodBirdProjectData SET SurveyDate = '2006-10-14 00:00:00' WHERE ID = 24947;

-- update survey records w/ missing loop
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'West Loop' WHERE ID BETWEEN 34523 AND 34530;

-- update survey records w/ erroneous station number
UPDATE tblNeighborhoodBirdProjectData SET Station = 7 WHERE ID = 21029;
UPDATE tblNeighborhoodBirdProjectData SET Station = 3 WHERE ID = 23880;
UPDATE tblNeighborhoodBirdProjectData SET Station = 8 WHERE ID = 24418;
UPDATE tblNeighborhoodBirdProjectData SET Station = 2 WHERE ID = 25323;
UPDATE tblNeighborhoodBirdProjectData SET Station = 4 WHERE ID = 28882;

-- delete species records w/o ID
DELETE FROM tblNHBPSpeciesData WHERE LID BETWEEN 5293 AND 5294 OR LID = 12586 OR LID BETWEEN 31996 AND 32002 OR LID BETWEEN 84281 AND 84286;

-- insert species record from tblNHBPSpeciesDataOld
INSERT INTO tblNHBPSpeciesData (LID, ID, Species, Seen, Heard, Fly, Nest)
VALUES (99534, 24313, 'Golden-crowned Kinglet', 2.0, 0.0, 0, 0);

-- update Discovery Park loop names
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE Site = 'Discovery Park' AND Loop = 'Beaches (N & S Combined)';
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Daybreak Star' WHERE Site = 'Discovery Park' AND Loop = 'Daybreak Loop';
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Eastern Edge' WHERE Site = 'Discovery Park' AND Loop = 'Eastern Loop';
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Nike/500' WHERE Site = 'Discovery Park' AND Loop = 'Nike 500';
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'North Loop Trail' WHERE Site = 'Discovery Park' AND Loop = 'Northern Loop';
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Loop Trail' WHERE Site = 'Discovery Park' AND Loop = 'Southern Loop';

-- delete survey records for Discovery Beaches loop w/ station number >= 8
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID IN (20786, 20953, 20977, 21030, 21126, 21192, 21234, 21293, 21342, 21392, 21866, 21984, 22151,
        22223, 22279, 22762, 22974, 23180, 23242, 23243, 23265, 23266, 23299, 23460, 23501, 23575, 26759, 26556, 26603, 26611, 26619, 26627, 26635,
        26643, 26701, 26859, 27244, 27401, 27574, 27892, 28130, 28465, 28651, 28835, 28898, 29103, 29292, 29655, 29715, 30139, 30279, 30324, 30398,
        30459, 31276, 32331, 32569, 32632, 32760, 32813, 32943, 33108, 33198, 33327, 33372, 33501, 33855, 34004, 34144, 34251, 34735, 34751);
DELETE FROM tblNHBPSpeciesData WHERE ID IN (20786, 20953, 20977, 21030, 21126, 21192, 21234, 21293, 21342, 21392, 21866, 21984, 22151, 22223, 22279,
        22762, 22974, 23180, 23242, 23243, 23265, 23266, 23299, 23460, 23501, 23575, 26759, 26556, 26603, 26611, 26619, 26627, 26635, 26643, 26701,
        26859, 27244, 27401, 27574, 27892, 28130, 28465, 28651, 28835, 28898, 29103, 29292, 29655, 29715, 30139, 30279, 30324, 30398, 30459, 31276,
        32331, 32569, 32632, 32760, 32813, 32943, 33108, 33198, 33327, 33372, 33501, 33855, 34004, 34144, 34251, 34735, 34751);

-- update May 2005 survey records for North Bluff Loop to North Beach Trail loop
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'North Beach Trail' WHERE ID IN (22732, 22733, 22734);

-- update June 2005 survey records for North Bluff Loop to North Beach Trail loop
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'North Beach Trail' WHERE ID IN (22993, 22994, 22995, 22996);

-- update December 2005 survey records for North Bluff Loop to North Beach Trail loop
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'North Beach Trail' WHERE ID IN (23421, 23422, 23423, 23424);

-- update April 2006 survey records for North Beach Trail to Beaches loop
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE ID IN (24435, 24436, 24437, 24438, 24439, 24440, 24441);

-- update May 2006 survey records for North Beach Trail to Beaches loop, remove data for station 8
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE ID IN (24356, 24357, 24358, 24359, 24360, 24361, 24362);
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID = 24363;
DELETE FROM tblNHBPSpeciesData WHERE ID = 24363;

-- update June 2006 survey records for North Beach Trail to Beaches loop, remove data for station 8
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE ID IN (24508, 24509, 24510, 24511, 24512, 24513, 24514);
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID = 24515;
DELETE FROM tblNHBPSpeciesData WHERE ID = 24515;

-- update July 2006 survey records for North Beach Trail to Beaches loop, remove data for station 8
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE ID IN (24578, 24579, 24580, 24581, 24582, 24583, 24584);
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID = 24585;
DELETE FROM tblNHBPSpeciesData WHERE ID = 24585;

-- update August 2006 survey records for North Beach Trail to Beaches loop, remove data for station 8
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE ID IN (24642, 24643, 24644, 24645, 24646, 24647, 24648);
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID = 24649;
DELETE FROM tblNHBPSpeciesData WHERE ID = 24649;

-- update September 2006 survey records for North Beach Trail to Beaches loop, remove data for station 8
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE ID IN (24776, 24777, 24778, 24779, 24780, 24781, 24782);
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID = 24783;
DELETE FROM tblNHBPSpeciesData WHERE ID = 24783;

-- update October 2006 survey records for North Beach Trail to Beaches loop, remove data for station 8
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Beaches' WHERE ID IN (24820, 24821, 24822, 24823, 24824, 24825, 24826);
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID = 24827;
DELETE FROM tblNHBPSpeciesData WHERE ID = 24827;

-- update March 2004 survey records for South Bluff to South Loop Trail
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Loop Trail' WHERE ID IN (21005, 21006, 21007, 21008, 21009, 21010, 21011, 21012, 21013);

-- update August 2005 survey records for South Bluff to South Meadow
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Meadow' WHERE ID IN (23191, 23192, 23193, 23194, 23195, 23196, 23197, 23198, 23199);

-- update June 2006 survey records for South Loop Trail to Eastern Edge
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Eastern Edge' WHERE ID IN (24516, 24517, 24518, 24519, 24520, 24521, 24522, 24523, 24524);

-- delete erroneous duplicate station 7 data for May 2012 South Beach Trail survey
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID = 34095;
DELETE FROM tblNHBPSpeciesData WHERE ID = 34095;

-- delete erroneous duplicate stations & data for September 2005 Beaches survey
DELETE FROM tblNeighborhoodBirdProjectData WHERE ID IN (23235, 23236, 23237, 23238, 23239, 23240, 23241);
DELETE FROM tblNHBPSpeciesData WHERE ID IN (23235, 23236, 23237, 23238, 23239, 23240, 23241);

-- update erroneous station data for September 2005 Beaches survey
UPDATE tblNHBPSpeciesData SET Heard = 0, Fly = 1 WHERE LID = 36872;

-- delete erroneous station data for September 2005 Beaches survey
DELETE FROM tblNHBPSpeciesData WHERE LID = 36881;

-- update remaining North Bluff Loop surveys to Hidden Valley Trail
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Hidden Valley Trail' WHERE Site = 'Discovery Park' AND Loop = 'North Bluff Loop';

-- update November 2004 survey records for South Bluff to South Beach Trail and set observers to Martha Taylor & Barbara Webster
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Beach Trail', Observer1 = 'Martha Taylor', Observer2 = 'Barbara Webster' WHERE ID IN (21852, 21853, 21854, 21855, 21856, 21857, 21858);

-- update December 2004 survey records for South Bluff to South Beach Trail and set observer to Barbara Webster
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Beach Trail', Observer1 = 'Barbara Webster' WHERE ID IN (21923, 21924, 21925, 21926, 21927, 21928, 21929);

-- update January 2005 survey records for South Bluff to South Beach Trail and set observer to Barbara Webster
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Beach Trail', Observer1 = 'Barbara Webster' WHERE ID IN (21970, 21971, 21972, 21973, 21974, 21975, 21976);

-- update February 2005 survey records for South Bluff to South Beach Trail
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Beach Trail'WHERE ID IN (22152, 22153, 22154, 22155, 22156, 22157, 22158);

-- update March 2005 survey records for Beaches to South Beach Trail
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Beach Trail'WHERE ID IN (22183, 22184, 22185, 22186, 22187, 22188, 22189);

-- update April 2005 survey records for South Bluff to South Beach Trail
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'South Beach Trail'WHERE ID IN (22280, 22281, 22282, 22283, 22284, 22285, 22286);

-- update August 2008 survey records for Discovery - South Loop Trail to Magnuson - Southend Loop
UPDATE tblNeighborhoodBirdProjectData SET Site = 'Magnuson', Loop = 'Southend Loop' WHERE ID IN (27800, 27801, 27802, 27803, 27804);

-- update October 2008 survey records for South Meadow to Eastern Edge
UPDATE tblNeighborhoodBirdProjectData SET Loop = 'Eastern Edge' WHERE ID IN (28210, 28211, 28212, 28213, 28214, 28215, 28216, 28217, 28218);

-- update erroneous American Black Duck record to American Crow
UPDATE tblNHBPSpeciesData SET Species = 'American Crow' WHERE LID = 31814;
