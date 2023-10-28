INSERT INTO Artist (name) VALUES('lil Nas X');
INSERT INTO Artist (name) VALUES('lil baby');
INSERT INTO Artist (name) VALUES('drake');

SELECT * FROM Artist ORDER BY name DESC LIMIT 10
SELECT * FROM Artist ORDER BY name ASC LIMIT 5
SELECT * FROM Artist WHERE name like 'Black%'
SELECT * FROM Artist WHERE name like '%Black%'