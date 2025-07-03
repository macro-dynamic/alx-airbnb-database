# 📘 ERD Requirements – AirBnB Clone

This document outlines the entities, attributes, and relationships required to model the database schema for the AirBnB Clone backend. The ER diagram should reflect these definitions and support all application features.

---

## 🧱 1. Entities and Attributes

### 🧑 User
- id (PK)
- username
- email
- password (hashed)
- is_host (boolean)
- created_at

### 🏠 Property
- id (PK)
- title
- description
- location (address/city/country)
- price_per_night
- host_id (FK → User.id)
- created_at

### 📅 Booking
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- start_date
- end_date
- status (pending, confirmed, cancelled)
- created_at

### 💳 Payment
- id (PK)
- booking_id (FK → Booking.id)
- amount
- payment_method
- status (success, failed)
- paid_at

### ⭐ Review
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- rating
- comment
- created_at

---

## 🔗 2. Relationships

- One **User** can create many **Properties** (1:N)
- One **User** can make many **Bookings** (1:N)
- One **Property** can have many **Bookings** (1:N)
- One **Booking** has exactly one **Payment** (1:1)
- One **User** can write many **Reviews** (1:N)
- One **Property** can receive many **Reviews** (1:N)

---

## 🎨 3. ERD Design Guidelines

- Use Draw.io (https://draw.io) or Lucidchart to create the ER diagram visually.
- Ensure all primary and foreign keys are clearly marked.
- Use crow's foot notation for cardinality if supported.
- Save the ER diagram as `ERD.png` or `ERD.drawio` in this folder when completed.

---

## ✅ Output Expectations

- This `requirements.md` defines the ERD structure.
- A complete visual diagram should be added to the `ERD/` folder based on this specification.
