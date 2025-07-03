# 📐 Database Normalization – AirBnB Clone

This document explains how normalization principles were applied to ensure the database schema reaches **Third Normal Form (3NF)** — minimizing redundancy and ensuring data integrity.

---

## ✅ First Normal Form (1NF)

**Goal:** Eliminate repeating groups; ensure atomic fields.

**How We Achieved 1NF:**
- Each field contains only atomic values (e.g., `email`, `price_per_night`, etc.).
- No repeating groups or arrays in any table.
- Example: `location` is broken into address components (if needed).

---

## ✅ Second Normal Form (2NF)

**Goal:** Remove partial dependencies (only applies if there's a composite PK).

**How We Achieved 2NF:**coe
- All tables use a single-field primary key (`id`), so partial dependency issues don’t apply.
- Each non-key attribute fully depends on its table's primary key.
- Example: In `bookings`, `start_date` and `status` depend entirely on `id`, not just `user_id`.

---

## ✅ Third Normal Form (3NF)

**Goal:** Remove transitive dependencies (non-key columns shouldn't depend on other non-key columns).

**How We Achieved 3NF:**
- All non-key attributes depend only on the primary key.
- `host_id` is stored in `properties`, not duplicated in `bookings`.
- Payment details are stored in a separate `payments` table — not embedded in `bookings`.
- No derived or calculated fields are stored (e.g., total nights, total cost).

---

## 🧠 Final Verdict

The schema satisfies:
- ✅ 1NF: Atomic values, unique rows
- ✅ 2NF: Full functional dependency
- ✅ 3NF: No transitive dependencies

No further normalization is required at this stage.

---

## 🗂️ Affected Tables

| Table       | Notes on Normalization |
|-------------|------------------------|
| users       | Flat structure; all attributes directly depend on `id` |
| properties  | Linked to users via `host_id`; avoids duplication |
| bookings    | Linked to users and properties via FK; no transitive issues |
| payments    | Kept separate to preserve modular design |
| reviews     | References users and properties; atomic and relational |
