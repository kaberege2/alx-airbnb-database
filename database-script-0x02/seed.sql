-- Sample Users
INSERT INTO users (first_name, last_name, email, password_hash, role)
VALUES
('Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', 'guest'),
('Bob', 'Jones', 'bob@example.com', 'hashed_pw_2', 'host');

-- Sample Properties
INSERT INTO properties (host_id, name, description, location, pricepernight)
VALUES
((SELECT user_id FROM users WHERE email='bob@example.com'), 'Cozy Cabin', 'A cozy mountain cabin.', 'Denver, CO', 120.00);

-- Sample Bookings
INSERT INTO bookings (property_id, user_id, start_date, end_date, total_price, status)
VALUES
((SELECT property_id FROM properties LIMIT 1), (SELECT user_id FROM users WHERE email='alice@example.com'), '2025-07-01', '2025-07-05', 480.00, 'confirmed');

-- Sample Payments
INSERT INTO payments (booking_id, amount, payment_method)
VALUES
((SELECT booking_id FROM bookings LIMIT 1), 480.00, 'stripe');

-- Sample Reviews
INSERT INTO reviews (property_id, user_id, rating, comment)
VALUES
((SELECT property_id FROM properties LIMIT 1), (SELECT user_id FROM users WHERE email='alice@example.com'), 5, 'Amazing stay!');

-- Sample Messages
INSERT INTO messages (sender_id, recipient_id, message_body)
VALUES
((SELECT user_id FROM users WHERE email='alice@example.com'),
 (SELECT user_id FROM users WHERE email='bob@example.com'),
 'Hi Bob, I have a question about the cabin.');
