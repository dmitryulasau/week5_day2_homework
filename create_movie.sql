DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_phone VARCHAR(10),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(50),
    "desc" TEXT,
    "length" TIME,
    raiting VARCHAR(10)
);

DROP TABLE IF EXISTS seat CASCADE;
CREATE TABLE seat(
    seat_id INTEGER NOT NULL PRIMARY KEY,
    "row" INTEGER NOT NULL
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    "time" TIMESTAMP,
    ticket_price DECIMAL(5, 2),
    seat_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY(seat_id) REFERENCES seat(seat_id) ON DELETE CASCADE,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS payment CASCADE;
CREATE TABLE payment(
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    item VARCHAR(50),
    price DECIMAL(5,2),
    quantity INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    payment_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(payment_id) REFERENCES payment(payment_id) ON DELETE CASCADE
);