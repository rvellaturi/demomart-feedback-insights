INSERT INTO customer.csat.feedback_classified
    SELECT 
        feedback_id,
        feedback_ts,
        feedback_text,
        SNOWFLAKE.CORTEX.CLASSIFY_TEXT(feedback_text, ['positive', 'negative', 'neutral']):label::STRING,
        SNOWFLAKE.CORTEX.CLASSIFY_TEXT(
            feedback_text, 
            ['Product', 'Customer Service', 'Delivery', 'Price', 'User Experience', 'Feature Request']
        ):label::STRING AS feedback_label,
        CURRENT_TIMESTAMP AS PROCESSED_TIMESTAMP
    FROM customer.csat.feedback;
