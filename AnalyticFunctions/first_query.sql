
SELECT * FROM W

SELECT w.row as 'current row',
       count(*) OVER () as 'frame size'
	   --STRING_AGG(w.row, ',') over () as 'rows in frame'
FROM W as w


SELECT w.row as 'current row',
       count(*) OVER (ORDER BY row) as 'frame size'
	   --STRING_AGG(w.row, ',') over () as 'rows in frame'
FROM W as w


SELECT w.row as 'current row',
		w.a,
       count(*) OVER (ORDER BY row) as 'frame size'
FROM W as w;


WITH CTE as (
SELECT w.row as 'current row',
		w.a,
       count(*) OVER (ORDER BY row) as 'frame size',
	   sum(w.a) OVER (ORDER BY row) as 'frame sum',
	   sum(w.a) OVER (PARTITION BY row) as 'frame sum partition', 
	   RANK() OVER (ORDER BY w.a) as 'rank row',
	   DENSE_RANK() OVER (ORDER BY w.a) as 'rank row dense',
	   ROW_NUMBER() OVER (ORDER BY row) as 'row number'
FROM W as w
)
SELECT * FROM CTE
WHERE [row number] =2 
