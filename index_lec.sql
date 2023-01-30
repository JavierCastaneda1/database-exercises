USE codeup_test_db;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS authors;


CREATE TABLE quotes (
                        id INT NOT NULL AUTO_INCREMENT,
                        author VARCHAR(50) NOT NULL,
                        content VARCHAR(240) NOT NULL,
                        PRIMARY KEY (id)
);

ALTER TABLE quotes
    ADD UNIQUE (content);

CREATE TABLE authors (
                        id INT NOT NULL AUTO_INCREMENT,
                        first_name VARCHAR(100) NOT NULL,
                        last_name VARCHAR(100) NOT NULL,
                        PRIMARY KEY (id),
                        CONSTRAINT full_name UNIQUE (first_name, last_name)
);


INSERT INTO quotes (author, content) VALUES ('Better out than in, I always say.', 'Shrek The Ogre');
INSERT INTO quotes (author, content) VALUES ('Better out than in, I always say.', 'Joe Stephens');

INSERT INTO authors (first_name, last_name) VALUES ('Robert', 'Rodriguez'),('Robert','Baker'),('Robert','Frost'),('Frosty','The Snowman'),('Jack','Frost');


