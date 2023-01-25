USE codeup_test_db;


    SELECT album_name FROM albums WHERE release_date > 1991;
    DELETE FROM albums WHERE release_date > 1991;

    SELECT  genre FROM albums WHERE genre = 'Disco';
    DELETE FROM albums WHERE genre = 'Disco';

    SELECT artist FROM albums WHERE artist = 'Whitney Houston';
    DELETE FROM albums WHERE artist = 'Whitney Houston';