GRANT REPLICATION SLAVE ON *.* TO 'slave'@'%' IDENTIFIED BY 'test';

SELECT user, host FROM mysql.user;

SHOW MASTER STATUS;

CREATE TABLE IF NOT EXISTS tasks (
    task_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATETIME,
    status TINYINT NOT NULL,
    priority TINYINT NOT NULL,
    description TEXT,
    PRIMARY KEY (task_id)
)  ENGINE=INNODB;