SELECT movie_title,release_year,count(tagline)
FROM
    sqlmdb.movies 
    LEFT JOIN sqlmdb.taglines
        USING(movie_guid)
WHERE ebert_great_film = 'Y'
GROUP BY movie_title, release_year
--HAVING COUNT(tagline)>3
ORDER BY COUNT(tagline) DESC;

SELECT movie_title,release_year,count(tagline)
FROM
    sqlmdb.movies 
    LEFT JOIN sqlmdb.taglines
        USING(movie_guid)
WHERE ebert_great_film = 'Y'
GROUP BY movie_title, release_year
--HAVING COUNT(tagline)>3
ORDER BY COUNT(tagline) DESC;

SELECT *
FROM sqlmdb.persons
WHERE person_name='Steve McQueen';

SELECT person_name, COUNT(*) AS tally
FROM sqlmdb.persons
GROUP BY person_guid,person_name;


SELECT movie_title,release_year,count(tagline)
FROM
    sqlmdb.movies 
WHERE (ebert_great_film = 'Y') AND
      (m.mmovie_guid=t.movie_guid)  
GROUP BY movie_title, release_year
--HAVING COUNT(tagline)>3
ORDER BY COUNT(tagline) DESC;

SELECT genre_code, 
COUNT(*) AS movie_tally 
FROM sqlmdb.movie_genres
GROUP BY genre_code;


SELECT movie_title, release_year, imdb_rating
FROM
    sqlmdb.movies
    INNER JOIN sqlmdb.critic_reviews
        USING(movie_guid)
WHERE imdb_rating>=8.5
    AND (metascore>=85);

SELECT runtime, metascore
FROM 
    sqlmdb.movies m
    INNER JOIN sqlmdb.critic_reviews cr
        ON m.movie_guid=cr.movie_guid;
        
--q4
False
--q5
F
