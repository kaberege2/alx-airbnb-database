-- Initial query with WHERE and AND
SELECT b.*, u.first_name, u.last_name, p.name, p.location, pay.amount, pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed' AND pay.amount > 0;

-- Performance analysis
EXPLAIN ANALYZE
SELECT b.*, u.first_name, u.last_name, p.name, p.location, pay.amount, pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed' AND pay.amount > 0;

