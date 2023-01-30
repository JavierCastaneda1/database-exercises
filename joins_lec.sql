CREATE DATABASE join_test_db;
USE join_test_db;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id) VALUES
                                             ('Random', 'random@example.com', NULL),
                                             ('Emile', 'emile@example.com', 2),
                                             ('Alexi', 'alexi@example.com', 2),
                                             ('Soph', 'soph@example.com', 2);



SELECT * FROM users
                  JOIN roles ON users.role_id = roles.id;

SELECT * FROM users
                  RIGHT JOIN roles ON users.role_id = roles.id;


SELECT roles.name, COUNT(users.id) AS num_users
FROM roles
         LEFT JOIN users ON users.role_id = roles.id
GROUP BY roles.name;