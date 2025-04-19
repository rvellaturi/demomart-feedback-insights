SELECT feedback_category, sentiment, COUNT(*) AS total
FROM customer.csat.feedback_classified
GROUP BY feedback_category, sentiment
ORDER BY total DESC;