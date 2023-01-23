USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(58),
                        album_name VARCHAR(50),
                        release_date INT,
                        sales FLOAT (10),
                        genre VARCHAR(10),
                        PRIMARY KEY (id)
);