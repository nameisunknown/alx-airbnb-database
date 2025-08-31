USE airbnb_project;

INSERT INTO Users (user_id, first_name, last_name, email, phone, password_hash, created_at)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '+2348012345678', 'hashed_pw1', NOW()),
(2, 'Mary', 'Johnson', 'mary.j@example.com', '+2348023456789', 'hashed_pw2', NOW()),
(3, 'Ahmed', 'Olawale', 'ahmed.ola@example.com', '+2348034567890', 'hashed_pw3', NOW());


INSERT INTO Address (address_id, street, city, state, country, postal_code)
VALUES
(1, '12 Adeola Odeku Street', 'Victoria Island', 'Lagos', 'Nigeria', '101241'),
(2, '45 King’s Road', 'Ikoyi', 'Lagos', 'Nigeria', '101233'),
(3, '15 Marina Street', 'Abuja Central', 'Abuja', 'Nigeria', '900211');

INSERT INTO Property (property_id, owner_id, address_id, title, description, price_per_night, created_at)
VALUES
(1, 1, 1, 'Cozy Apartment in VI', 'A lovely 2-bedroom apartment with sea view', 35000, NOW()),
(2, 2, 2, 'Luxury Villa Ikoyi', 'Spacious villa with swimming pool and gym', 120000, NOW()),
(3, 3, 3, 'Budget Room in Abuja', 'Simple and affordable room for travelers', 15000, NOW());

INSERT INTO Amenity (amenity_id, name)
VALUES
(1, 'WiFi'),
(2, 'Air Conditioning'),
(3, 'Swimming Pool'),
(4, 'Gym'),
(5, 'Parking');

INSERT INTO Property_Amenity (property_id, amenity_id)
VALUES
(1, 1), -- Cozy Apartment has WiFi
(1, 2), -- Cozy Apartment has AC
(2, 1), -- Luxury Villa has WiFi
(2, 2), -- Luxury Villa has AC
(2, 3), -- Luxury Villa has Pool
(2, 4), -- Luxury Villa has Gym
(3, 1), -- Budget Room has WiFi
(3, 5); -- Budget Room has Parking

INSERT INTO Booking (booking_id, user_id, property_id, check_in_date, check_out_date, total_price, status)
VALUES
(1, 2, 1, '2025-09-05', '2025-09-10', 175000, 'confirmed'),
(2, 3, 2, '2025-10-01', '2025-10-07', 840000, 'pending'),
(3, 1, 3, '2025-09-15', '2025-09-18', 45000, 'confirmed');

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method, status)
VALUES
(1, 1, 175000, '2025-09-01', 'Credit Card', 'completed'),
(2, 2, 840000, '2025-09-20', 'Bank Transfer', 'pending'),
(3, 3, 45000, '2025-09-10', 'Wallet', 'completed');

INSERT INTO Message (message_id, sender_id, receiver_id, property_id, content, sent_at)
VALUES
(1, 2, 1, 1, 'Hi John, is the apartment available for next week?', NOW()),
(2, 1, 2, 1, 'Yes Mary, it’s available. Would you like to book?', NOW()),
(3, 3, 2, 2, 'Hi Mary, can I get a discount for the villa?', NOW());

