/* =========================================================
   Education and Income Analysis
   Author: Chisaala Simasiku
   Purpose: Demonstrate core SQL analysis techniques
   Database: SQLite
   ========================================================= */


/* ---------------------------------------------------------
   1. Inspect table structure
   --------------------------------------------------------- */
PRAGMA table_info(people);


/* ---------------------------------------------------------
   2. Sample records to validate data
   --------------------------------------------------------- */
SELECT *
FROM people
LIMIT 10;


/* ---------------------------------------------------------
   3. Average monthly income by education level
   --------------------------------------------------------- */
SELECT 
    education_level,
    COUNT(*) AS count_people,
    AVG(monthly_income) AS avg_monthly_income
FROM people
GROUP BY education_level
ORDER BY avg_monthly_income DESC;


/* ---------------------------------------------------------
   4. Join-based aggregation (relational design demonstration)
   --------------------------------------------------------- */
SELECT 
    p.education_level,
    COUNT(p.person_id) AS count_people,
    AVG(p.monthly_income) AS avg_monthly_income
FROM people p
INNER JOIN people e
    ON p.person_id = e.person_id
GROUP BY p.education_level
ORDER BY avg_monthly_income DESC;


/* ---------------------------------------------------------
   5. Categorise income into bands using CASE WHEN
   --------------------------------------------------------- */
SELECT 
    education_level,
    CASE
        WHEN monthly_income < 1000 THEN 'Low income'
        WHEN monthly_income BETWEEN 1000 AND 3000 THEN 'Middle income'
        ELSE 'High income'
    END AS income_band,
    COUNT(*) AS count_people
FROM people
GROUP BY education_level, income_band
ORDER BY education_level, count_people DESC;


/* ---------------------------------------------------------
   6. Filter aggregated results using HAVING
   --------------------------------------------------------- */
SELECT 
    education_level,
    AVG(monthly_income) AS avg_monthly_income
FROM people
GROUP BY education_level
HAVING AVG(monthly_income) > 2500
ORDER BY avg_monthly_income DESC;
