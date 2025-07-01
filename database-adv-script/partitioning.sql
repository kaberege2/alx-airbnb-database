-- Parent table
CREATE TABLE bookings_partitioned (
    booking_id UUID,
    property_id UUID,
    user_id UUID,
    start_date DATE,
    end_date DATE,
    total_price DECIMAL,
    status VARCHAR,
    created_at TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Example partitions
CREATE TABLE bookings_2025_q1 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');

CREATE TABLE bookings_2025_q2 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');

-- Performance test
EXPLAIN ANALYZE SELECT * FROM bookings_partitioned WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';

