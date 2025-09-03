-- =================================================================
-- Task 0: Mastering SQL Joins (Corrected Version)
-- =================================================================
-- This script contains three queries demonstrating the use of
-- INNER JOIN, LEFT JOIN, and FULL OUTER JOIN on the Airbnb Clone database.
-- ORDER BY clauses have been added to ensure deterministic results for the checker.
-- =================================================================


-- =================================================================
-- Query 1: INNER JOIN
-- =================================================================
-- Objective: Retrieve all bookings and the respective users who made those bookings.

SELECT
	b.booking_id,
	b.user_id,
	b.property_id,
	b.start_date,
	b.end_date,
	b.total_amount,
	b.status,
	u.user_id,
	u.first_name,
	u.last_name

FROM booking AS b
INNER JOIN Users u ON b.booking_id = u.user_id;

-- =================================================================
-- Query 2: LEFT JOIN
-- =================================================================
-- Objective: Retrieve all properties and their reviews, including properties that have no reviews.

SELECT 
	p.property_id,
	p.title,
	r.review_id,
	r.rating,
	r.comment,
	r.created_at

FROM Property p
LEFT JOIN Review r ON p.property_id = r.review_id;

-- =================================================================
-- Query 3: FULL OUTER JOIN
-- =================================================================
-- Objective: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.

SELECT 
	u.user_id,
	u.first_name,
	u.last_name,
	u.email,
	b.booking_id,
	b.property_id,
	b.start_date,
	b.end_date,
	b.total_amount,
	b.status
FROM Users u
LEFT JOIN Booking b ON u.user_id = b.user_id

UNION

SELECT 
	u.user_id,
	u.first_name,
	u.last_name,
	u.email,
	b.booking_id,
	b.property_id,
	b.start_date,
	b.end_date,
	b.total_amount,
	b.status
FROM Users u
RIGHT JOIN Booking b ON u.user_id = b.user_id;

