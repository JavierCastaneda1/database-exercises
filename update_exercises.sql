USE codeup_test_db;

    SELECT album_name AS 'All the albums' FROM albums;

    SELECT sales name FROM albums;

    UPDATE albums SET sales = sales * 10;

    SELECT album_name AS 'All the albums' FROM albums;

    SELECT album_name AS 'Albums before 80s' FROM albums WHERE release_date < 1980;

    UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;

    SELECT album_name AS 'All albums by Michael Jackson', artist AS 'Artist' FROM albums WHERE artist = "Michael Jackson";

    UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

