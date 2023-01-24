USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(58),
                        album_name VARCHAR(100),
                        release_date INT,
                        sales FLOAT,
                        genre VARCHAR(50),
                        PRIMARY KEY (id)
);
INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams',    'Time is an illusion. Lunchtime doubly so.'),
       ('Mark',    'Twain',    'Clothes make the man. Naked people have little or no influence on society.'),
       ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');