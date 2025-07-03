-- Seed lookup tables
INSERT INTO booking_status (status_name) VALUES 
    ('pending'), ('confirmed'), ('cancelled');

INSERT INTO payment_status (status_name) VALUES 
    ('success'), ('failed');

-- Users
INSERT INTO users (username, email, password, is_host) VALUES 
    ('alice', 'alice@example.com', 'hashed_pass1', true),
    ('bob', 'bob@example.com', 'hashed_pass2', false),
    ('carol', 'carol@example.com', 'hashed_pass3', false);

-- Properties
INSERT INTO properties (title, description, address, city, country, price_per_night, host_id) VALUES 
    ('Ocean View Villa', 'Luxury villa by the sea', '123 Seaside Ave', 'Casablanca', 'Morocco', 200.00, 1),
    ('Mountain Cabin', 'Cozy cabin with mountain views', '789 Peak Rd', 'Chefchaouen', 'Morocco', 90.00, 1);

-- Bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, status_id) VALUES 
    (2, 1, '2025-08-10', '2025-08-15', 2),
    (3, 2, '2025-09-01', '2025-09-05', 1);

-- Payments
INSERT INTO payments (booking_id, amount, payment_method, status_id, paid_at) VALUES 
    (1, 1000.00, 'credit_card', 1, '2025-07-01 10:00:00'),
    (2, 450.00, 'paypal', 2, '2025-07-10 11:00:00');

-- Reviews
INSERT INTO reviews (user_id, property_id, rating, comment) VALUES 
    (2, 1, 5, 'Fantastic stay, beautiful view!'),
    (3, 2, 4, 'Very peaceful and relaxing.');
