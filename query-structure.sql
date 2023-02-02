SELECT <column name(s)> function() FROM <tablename>


-- which counties have the mosst electric vechicles?
SELECT county, count(county)
FROM registration
WHERE electrification = 'BEV (Battery Electric Vehicle)'
GROUP BY county
ORDER BY count DESC;

-- Answer:
--          county          | count 
-- -------------------------+-------
--  King                    |   732
--  Snohomish               |   148
--  Clark                   |    83
--  Pierce                  |    75
--  Kitsap                  |    37
--  Whatcom                 |    34
--  Spokane                 |    29
--  Thurston                |    27
--  Skagit                  |    17
--  Island                  |    17
--  Benton                  |    12
--  Chelan                  |     9
--  Unknown or Out of State |     8
--  Cowlitz                 |     7
--  Grant                   |     6
--  Clallam                 |     6
--  Yakima                  |     6
--  San Juan                |     5
--  Mason                   |     4
--  Lewis                   |     3
--  Grays Harbor            |     3
--  Jefferson               |     3
--  Franklin                |     2
--  Klickitat               |     2
--  Walla Walla             |     2
--  Kittitas                |     2
--  Skamania                |     1
--  Whitman                 |     1
--  Douglas                 |     1
-- (29 rows)



-- What colors are Ferraris
SELECT DISTINCT color 
FROM registration 
Where make = 'FERRARI';

-- Answer:  

-- color       
-- -------------------
--  ALUMINUM / SILVER
--  BLACK
--  IVORY
--  RED


-- Number of Tesla vehicles by model
SELECT model, count(model)
FROM registration
WHERE Make = 'TESLA'
GROUP BY Model
ORDER BY count ASC;

--Answer:
--   model   | count 
-- ----------+-------
--  ROADSTER |     2
--  MODEL X  |    86
--  MODEL Y  |   120
--  MODEL S  |   225
--  MODEL 3  |   474
-- (5 rows)


-- What makes are represented in the db

SELECT DISTINCT make
FROM registration
GROUP BY make;