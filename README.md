Education and Income Analysis (SQL)
Project Overview
This project explores the relationship between educational attainment and monthly income using SQL. The analysis focuses on demonstrating core data analysis techniques—aggregation, joins, conditional logic, and post-aggregation filtering—while producing interpretable, decision-oriented insights. 
The project was designed as a proof of SQL competency, with query structures that reflect real-world, production-style databases rather than purely academic examples.
Objective
To analyse how income outcomes vary across education levels and to demonstrate practical SQL skills commonly required in data analyst and business analyst roles.
Dataset
•	Table: people
•	Key variables:
o	person_id – unique identifier
o	education_level
o	employment_status
o	monthly_income
The dataset represents individual-level observations and was validated through schema inspection and record sampling prior to analysis.
SQL Techniques Used
•	Data exploration and validation (PRAGMA, record sampling)
•	Aggregation using COUNT() and AVG()
•	Grouped analysis with GROUP BY
•	Relational thinking using INNER JOIN
•	Conditional transformations using CASE WHEN
•	Post-aggregation filtering using HAVING
•	Result ordering for analytical clarity
Key Analytical Questions
•	How does average monthly income vary across different levels of educational attainment?
•	How are income outcomes distributed within education groups when income is categorised into bands?
•	Which education levels are associated with higher average income after applying aggregate thresholds?
Key Findings
•	Average monthly income increases with higher levels of educational attainment, with tertiary education associated with the highest mean income.
•	Income outcomes vary within education groups, indicating that education alone does not fully explain income differences.
•	Some unexpected patterns across education levels are likely driven by small sample sizes rather than data quality issues.
•	Categorising income into bands improves interpretability, particularly for non-technical audiences.
Repository Contents
•	queries.sql – Selected SQL queries used in the analysis
•	README.md – Project overview, methodology, and findings
Notes on Approach
Although the dataset was consolidated into a single table, join logic was intentionally applied to reflect scalable analytical practices used in multi-table database environments. Emphasis was placed on clarity, correctness, and reproducibility rather than query volume.
Tools
•	SQLite
•	DB Browser for SQLite
Next Steps
With access to larger or multi-country datasets, future analysis could:
•	Control for employment status and demographic variables
•	Test income differences statistically
•	Extend the model to multi-table schemas with longitudinal data
