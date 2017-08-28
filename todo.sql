CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(65000) NULL UNIQUE,
  priority INTEGER NOT NULL DEFAULT (1),
  created_at timestamp NOT NULL,
  completed_at timestamp NULL
);

INSERT INTO todolist (title, details, priority, created_at, completed_at)
VALUES ('code', 'create a wireframe', 2, '2017-09-01 10:00:30-07', '2017-10-01 14:14:14-14');

INSERT INTO todolist (title, details, priority, created_at)
VALUES ('paint', 'pick up supplies', 5, '2017-09-10 12:00:30-07'),
('marathon', 'run 12 miles', 2, '2017-08-27 08:00:30-07'),
('clean', 'code instead of clean', 3, '2017-11-11 22:00:30-07'),
('bootcamp', 'meditate before bootcamp', 10, '2017-12-08 14:00:30-07');

SELECT * from todolist Where completed_at is NULL;
SELECT title, details, priority, created_at, completed_at FROM todolist WHERE priority >= 1;
UPDATE todolist set completed_at = '2017-08-27 08:00:30-07' where id = 47;
select * from todolist;
DELETE FROM todolist where completed_at IS NOT NULL;
select * from todolist;
