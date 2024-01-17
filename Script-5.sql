CREATE TABLE movie (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  movie_time TIME(0) NOT NULL
);

CREATE TABLE theater (
	theater_id SERIAL PRIMARY KEY,
	LOCATION VARCHAR(100)  -- Dont understand why LOCATION IS blue
);

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  EMAIL VARCHAR(50) NOT NULL
);

CREATE TABLE ticket (
  ticket_id SERIAL PRIMARY KEY,
  ticket_price NUMERIC(15,2) NOT NULL,
  customer_id SERIAL,
  CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
  movie_id SERIAL,
  CONSTRAINT fk_movie
    FOREIGN KEY (movie_id)
    REFERENCES movie(movie_id)
  theater _id SERIAL,
  CONSTRAINT fk_theater
    FOREIGN KEY (theater_id)
    REFERENCES theater(theater _id)
);