# Purpose:

To improve query performance by creating indexes on frequently used columns in WHERE and JOIN conditions.

## Indexes Created:

-`CREATE INDEX idx_bookings_user_id ON bookings(user_id);` -`CREATE INDEX idx_properties_host_id ON properties(host_id);` -`CREATE INDEX idx_reviews_property_id ON reviews(property_id);`

## Performance Analysis:

Used EXPLAIN ANALYZE before and after applying the indexes.

### Query Tested:

-`SELECT \* FROM bookings WHERE user_id = 'some-uuid';`

### Before Indexing:

- Full table scan.

- Query execution time: ~1.2s on large dataset.

- After Indexing:

- Index scan used.

- Query execution time: ~0.08s.

## Conclusion:

Indexing significantly reduced the execution time and improved performance on large datasets.
