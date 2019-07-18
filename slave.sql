CHANGE MASTER TO MASTER_HOST='mysql-master', MASTER_USER='slave', MASTER_PASSWORD='test',
MASTER_LOG_FILE = 'mysql-bin.000001', MASTER_LOG_POS = 154;

START SLAVE;

SHOW SLAVE STATUS\G

INSERT INTO tasks (title, start_date, due_date, status, priority, description) VALUES ('test2', '2019-01-03', '2019-07-18 23:29:00', 2, 2, 'test2 desc');