USE codeup_test_db;

SELECT * FROM albums WHERE release_date = 1990;
SELECT * FROM albums WHERE release_date > 1990;


SELECT * FROM albums WHERE genre LIKE '%Disco%';

SELECT * FROM albums WHERE release_date NOT BETWEEN 1990 AND 1999;

SELECT * FROM albums WHERE artist IN ('Pink Floyd','Metallica', 'KISS', 'Bruce Springsteen');

SELECT * FROM albums WHERE artist = 'The Beatles' AND release_date > 1979;
SELECT * FROM albums WHERE artist = 'Shania Twain' AND release_date > 1900 OR genre LIKE '%rock%';
