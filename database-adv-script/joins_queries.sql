-- INNER JOIN: Bookings and respective users
SELECT b.*, u.first_name, u.last_name, u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;

-- LEFT JOIN: Properties and their reviews, including those without reviews
SELECT p.*, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id;

-- FULL OUTER JOIN: Users and bookings, even if there's no match
SELECT u.user_id, u.first_name, b.booking_id, b.start_date
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id;