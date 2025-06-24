# ERD (Entity Relationship Diagram)
## Description:

User (user_id)
↳ 1:N with Property (host_id)
↳ 1:N with Booking (user_id)
↳ 1:N with Review (user_id)
↳ 1:N with Message (sender_id & recipient_id)

Property (property_id)
↳ 1:N with Booking
↳ 1:N with Review

Booking (booking_id)
↳ 1:1 with Payment

# ERD Summary
## Entities & Attributes

### User (PK: user_id)
#### Attributes: 
 - first_name, last_name, email, password_hash, phone_number, role, created_at

### Property (PK: property_id)
#### Attributes: 
- host_id → references User
- name, description, location, pricepernight, created_at, updated_at

### Booking (PK: booking_id)
#### Attributes: 
- property_id → references Property
- user_id → references User
- start_date, end_date, total_price, status, created_at

### Payment (PK: payment_id)
#### Attributes: 
- booking_id → references Booking
- amount, payment_date, payment_method

### Review (PK: review_id)
#### Attributes:
- property_id → references Property
- user_id → references User
- rating, comment, created_at

### Message (PK: message_id)
#### Attributes: 
- sender_id, recipient_id → both reference User
- message_body, sent_at


## Relationships

User ↔ Property: 1 host → many properties

User ↔ Booking: 1 guest → many bookings

Property ↔ Booking: 1 property → many bookings

Booking ↔ Payment: 1 booking → 1 payment

Property ↔ Review: 1 property → many reviews

User ↔ Review: 1 user → many reviews

User ↔ Message: 1 user acts as sender → many messages; same for recipient

## ER diagram
The image can be found in ERD/erd.png
