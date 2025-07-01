-- Initial complex query
SELECT b.*, u.first_name, u.last_name, p.name, p.location, pay.amount, pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;

-- Optimized version: selected only required fields, ensure indexes
SELECT b.start_date, b.end_date, b.total_price, u.first_name, p.name, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;