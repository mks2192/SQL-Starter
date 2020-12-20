DROP TABLE IF EXISTS W;

CREATE TABLE W(
row VARCHAR(250) PRIMARY KEY,
a INT,
b VARCHAR(250)
);

INSERT INTO W (row, a, b) VALUES
('e1', 1, 'A'),
('e2', 2, 'B'),
('e3', 3, 'B'),
('e4', 3, 'A'),
('e5', 3, 'B'),
('e6', 4, 'B'),
('e7', 5, 'A'),
('e8', 6, 'A'),
('e9', 7, 'B');

SELECT * FROM W
