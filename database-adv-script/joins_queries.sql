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

SELECT 
	p.property_id,
	p.title,
	r.review_id,
	r.rating,
	r.comment,
	r.created_at

FROM Property p
LEFT JOIN Review r ON p.property_id = r.review_id;

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

