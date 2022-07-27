INSERT INTO movie(movie_title, "desc", "length", raiting) VALUES

('The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency', '2:22', 'R'),

('Knockin'' on Heaven''s Door', 'Two terminally ill patients escape from a hospital, steal a car and rush towards the sea.', '1:27', 'Not rated'),

('Forrest Gump', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', '2:22', 'PG-13');

INSERT INTO customer(customer_name, customer_phone, email) VALUES
('Chandler Bing', '7898765467', 'mbing@friends.com'),
('David Schwimmer', '2367890356', 'dino_lover@friends.com'),
('Matt LeBlanc', '8976112345', 'howyoudoin@friends.com');

INSERT INTO seat(seat_id, "row") VALUES
(1, 1),
(2, 1),
(3, 1);

INSERT INTO ticket("time", ticket_price, movie_id, customer_id, seat_id) VALUES
('2022-07-27, 19:00', 15.99, 1, 1, 1),
('2022-07-28, 20:00', 17.99, 2, 2, 2),
('2022-07-27, 19:00', 15.99, 3, 3, 3);

INSERT INTO payment(customer_id, ticket_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO concession(item, price, quantity, customer_id, payment_id) VALUES
('popcorn', 2.50, 1, 1, 1),
('coke', 1.00, 1, 2, 2),
('hot-dog', 4.99, 1, 3, 3);