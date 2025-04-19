
# 🧠 DemoMart Feedback Insights with Snowflake Cortex

This project demonstrates how to automate sentiment and category classification for customer feedback using **Snowflake Cortex** and SQL—no machine learning model training required.

## Features

- Ingest and store raw customer feedback in Snowflake
- Use LLM-powered classification for sentiment and category tagging
- Automate classification weekly using Snowflake Tasks
- Visualize insights with Snowsight

## Folders

- `data/` — Sample dataset (`customer_feedback_demomart.csv`)
- `sql/` — SQL scripts to create tables, classify feedback, automate tasks
- `README.md` — This documentation

## Run Steps

1. Create tables using `create_tables.sql`
2. Load data using `COPY INTO` from stage
3. Run `classify_feedback.sql` or automate with `automation_procedure.sql` + `automation_task.sql`
4. Visualize using `visualization_query.sql`

## License

MIT
