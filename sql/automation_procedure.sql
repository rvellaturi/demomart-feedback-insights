CREATE OR REPLACE PROCEDURE sp_classify_feedback()
RETURNS STRING
LANGUAGE SQL
AS
$$
    INSERT INTO customer.csat.feedback_classified
    SELECT 
        feedback_id,
        feedback_ts,
        feedback_text,
        SNOWFLAKE.CORTEX.CLASSIFY_TEXT(feedback_text, ['positive', 'negative', 'neutral']):label::STRING,
        SNOWFLAKE.CORTEX.CLASSIFY_TEXT(
            feedback_text, 
            ['Product', 'Customer Service', 'Delivery', 'Price', 'User Experience', 'Feature Request']
        ):label::STRING
    FROM customer.csat.feedback
    WHERE feedback_ts >= DATEADD(day, -7, CURRENT_DATE());
    RETURN 'OK';
$$;