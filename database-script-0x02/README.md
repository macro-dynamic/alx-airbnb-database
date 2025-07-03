# Database Seed – AirBnB Clone

This file populates the database with realistic sample data for development and testing purposes.

### Tables Seeded:
- `booking_status`
- `payment_status`
- `users`
- `properties`
- `bookings`
- `payments`
- `reviews`

To run this seed:
```sql
psql -U your_user -d airbnb_db -f database-script-0x02/seed.sql
