CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30)
    age INTEGER
    height INTEGER
    city VARCHAR(40)
    favorite_color VARCHAR(15)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('parker', 19, 200, 'ogden', 'green' ), 
('cam', 20, 185, 'lehi', 'green' ), 
('bridge', 31, 190, 'herriman', 'purple' ),
('nick', 20, 210, 'meridian', 'blue' ),
('kar', 18, 145, 'logan', 'pink' ),
('hadley', 21, 180, 'price', 'orange' );

SELECT * FROM person ORDER BY height DESC
SELECT * FROM person ORDER BY height ASC
SELECT * FROM person ORDER BY age DESC
SELECT * FROM person WHERE age > 20
SELECT * FROM person WHERE age = 18
SELECT * FROM person WHERE age < 20 or age > 30
SELECT * FROM person WHERE age <> 27
SELECT * FROM person WHERE favorite_color <> 'red'
SELECT * FROM person WHERE favorite_color <> 'red' and favorite_color <> 'blue'
SELECT * FROM person WHERE favorite_color = 'orange' or favorite_color = 'green'
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue')
SELECT * FROM person WHERE favorite_color IN ('purple', 'yellow')

