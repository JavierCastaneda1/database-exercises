USE codeup_test_db;

    SELECT album_name AS 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';

    SELECT release_date AS 'Year that Sgt. Peppers Lonely Hearts Club Band Released' FROM albums WHERE album_name = "Sgt. Peppers Lonely Hearts Club Band";

    SELECT genre AS 'Nevermind Genre' FROM albums WHERE album_name = 'Nevermind';

    SELECT album_name AS 'Albums from the 90s' FROM albums WHERE release_date >= 1990 AND release_date <= 1999;

    SELECT album_name AS 'Less than 20 million certified copies sold' FROM albums WHERE sales < 20;

    SELECT genre AS 'Genre as Rock' FROM albums WHERE genre = 'Rock';