SELECT <column name(s)> function() FROM <tablename>


-- which counties have the mosst electric vechicles?
SELECT county, count(county)
FROM registration
WHERE electrification = 'BEV (Battery Electric Vehicle)'
GROUP BY county
ORDER BY count DESC;


-- What colors are Ferraris
SELECT DISTINCT color 
FROM registration 
Where make = 'FERRARI';

-- Number of Tesla vehicles by model
SELECT model, count(model)
FROM registration
WHERE Make = 'TESLA'
GROUP BY Model
ORDER BY count ASC;