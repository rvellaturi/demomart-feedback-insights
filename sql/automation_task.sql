CREATE OR REPLACE TASK task_classify_feedback
WAREHOUSE = compute_wh
SCHEDULE = 'USING CRON 0 0 * * 0 UTC'
AS
CALL sp_classify_feedback();