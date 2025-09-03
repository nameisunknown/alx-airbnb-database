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
