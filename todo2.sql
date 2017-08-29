CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(65000) NULL UNIQUE,
  priority INTEGER NOT NULL DEFAULT (1),
  created_at timestamp NOT NULL,
  completed_at timestamp NULL
);

INSERT INTO todolist (title, details, priority, created_at, completed_at)
VALUES
('code', 'create a wireframe', 2, '2017-09-01 10:00:30-07', '2017-10-01 14:14:14-14'),
('read', 'pick a book', 3, '2017-09-01 10:00:30-07', '2017-10-01 14:14:14-14'),
('write', 'paper and pen', 2, '2017-09-01 10:00:30-07', '2017-10-01 14:14:14-14'),
('create', 'camera', 2, '2017-09-01 10:00:30-07', '2017-10-01 14:14:14-14'),
('Photography', 'grab film', 2, '2017-09-01 10:00:30-07', '2017-10-01 14:14:14-14');

INSERT INTO todolist (title, details, priority, created_at)
VALUES ('paint', 'pick up supplies', 5, '2017-09-10 12:00:30-07'),
('marathon', 'run 12 miles', 2, '2017-08-27 08:00:30-07'),
('clean', 'code instead of clean', 3, '2017-11-11 22:00:30-07'),
('bootcamp', 'meditate before bootcamp', 10, '2017-12-08 14:00:30-07');

INSERT INTO todolist (title, details, created_at)
VALUES
('paint', 'more supplies', '2017-06-10 12:00:30-07'),
('study', 'check notes', '2017-07-10 12:00:30-07'),
('clean room', 'maybe', '2017-08-10 12:00:30-07'),
('clean office', 'maybe not', '2017-09-10 12:00:30-07'),
('clean balcony', 'cleaning products', '2017-10-10 12:00:30-07');

INSERT INTO todolist (title, details, priority, created_at)
VALUES
('paint', 'pick up more supplies', 4, '2017-07-29 12:00:30-07'),
('shave', 'get clippers', 4, '2017-09-10 12:00:30-07'),
('meditate', 'find quiet area', 3, '2017-07-10 12:00:30-07'),
('yoga', 'get yoga mat', 2, '2017-08-10 12:00:30-07'),
('network', 'reach out to contacts', 2, '2017-06-10 12:00:30-07');


select * from todolist where priority = 3 and completed_at is NULL;
select * from todolist where completed_at is null order by priority;
select * FROM todolist where created_at < current_date - 30;
select * from todolist where priority <= 1 and created_at is not null
order by created_at asc limit 1;
