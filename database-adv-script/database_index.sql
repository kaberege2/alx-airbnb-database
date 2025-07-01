-- database_index.sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_properties_host_id ON properties(host_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Performance Test
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 'some-uuid';