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
