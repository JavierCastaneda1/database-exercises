USE codeup_test_db;

    SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

    SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

    SELECT genre FROM albums WHERE album_name = 'Nevermind';

    SELECT album_name FROM albums WHERE release_date >= 1990 AND release_date <= 1999;

    SELECT album_name FROM albums WHERE sales < 20;

    SELECT album_name FROM albums WHERE genre like '%Rock%' OR '%rock%';