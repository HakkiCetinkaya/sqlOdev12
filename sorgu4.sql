SELECT payment.customer_id, first_name, last_name, COUNT(payment_id) payment_count
FROM payment
LEFT JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY payment_count DESC;