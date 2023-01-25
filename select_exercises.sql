USE codeup_test_db;

    SELECT album_name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

    SELECT release_date AS 'The year Sgt Peppers released' FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

    SELECT genre AS 'Genre for the album by Fleetwood Mac' FROM albums WHERE album_name = 'Rumours';

    SELECT album_name AS 'Albums released in the 90s' FROM albums WHERE release_date >= 1990 AND release_date <= 1999;

    SELECT album_name AS 'Album sales less then 20mil' FROM albums WHERE sales < 20.0;

    SELECT album_name AS 'Albums with the genre of Rock' FROM albums WHERE genre like '%Rock%' OR '%rock%';