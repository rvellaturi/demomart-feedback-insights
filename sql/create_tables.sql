CREATE OR REPLACE TABLE customer.csat.feedback (
    feedback_id INT,
    feedback_ts DATE,
    feedback_text STRING
);

CREATE OR REPLACE TABLE customer.csat.feedback_classified (
    feedback_id INT,
    feedback_ts DATE,
    feedback_text STRING,
    sentiment STRING,
    feedback_category STRING
);