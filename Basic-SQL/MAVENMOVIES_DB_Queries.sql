-- TASK 1 TO FIND THE NAME AND LENGTH OF THE ACTOR WITHOUT SPACE FOR THE FIRST 10 ACTORS

select character_length(concat(first_name,last_name)) , 
concat(first_name, " ",last_name) from actor
LIMIT 10 ;


-- TASK 2  TO FIND THE NAME OF THE ACTORS WHO HAVE SECURED OSCARS AWARD

SELECT character_length(CONCAT(FIRST_NAME," ",LAST_NAME)), 
CONCAT (FIRST_NAME, " " , LAST_NAME)
FROM ACTOR_AWARD
WHERE AWARDS LIKE "%oscar%" ;



-- TASK 3 TO FIND THE NAMES OF THE ACTOR WHO ACTED IN MOVIE FROST HEAD

SELECT film.title,CONCAT(FIRST_NAME, " " , LAST_NAME)  FROM ACTOR 
INNER JOIN film_actor
ON ACTOR.ACTOR_ID = FILM_ACTOR.ACTOR_ID
INNER JOIN film
ON FILM.FILM_ID = FILM_ACTOR.FILM_ID
WHERE FILM.TITLE = "FROST HEAD" ;

-- TASK 4 TO FIND THE TITLE OF THE FILMS ACTED BY WILL WILSON

SELECT TITLE,concat(actor.first_name," ",actor.last_name) FROM film_actor
INNER JOIN actor
ON ACTOR.ACTOR_ID = FILM_ACTOR.ACTOR_ID
INNER JOIN FILM
ON FILM.FILM_ID = FILM_ACTOR.FILM_ID
WHERE ACTOR.FIRST_NAME = "WILL" AND ACTOR.LAST_NAME = "WILSON" ;

-- TASK 5 TO FIND THE NAME OF THE MOVIE WHICH WAS RENTED AND RETURNED IN THE MONTH OF MAY

SELECT title,rental_date,return_date FROM FILM 
INNER JOIN INVENTORY
ON FILM.FILM_ID = INVENTORY.FILM_ID
INNER JOIN RENTAL 
ON RENTAL.INVENTORY_ID = INVENTORY.INVENTORY_ID
WHERE monthname(RENTAL_DATE) = "MAY" AND monthname(RETURN_DATE) = "MAY" ;


-- TASK 6 TO FIND THE TITLE OF THE FILM WHICH ARE FROM COMEDY CATEGORY

SELECT TITLE , category.name FROM film
INNER JOIN FILM_CATEGORY
ON FILM.FILM_ID = FILM_CATEGORY.FILM_ID
INNER JOIN CATEGORY 
ON CATEGORY.CATEGORY_ID = film_category.category_id
WHERE category.name = "COMEDY" ;






