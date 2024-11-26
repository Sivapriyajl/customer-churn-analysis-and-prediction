--Replace missing values in table
UPDATE telecom_customer_data
SET "churn_category" = COALESCE(NULLIF("churn_category", 'NaN'), 'Other');

SELECT DISTINCT churn_category
FROM telecom_customer_data;

UPDATE telecom_customer_data
SET "churn_reason" = COALESCE(NULLIF("churn_reason", 'NaN'), 'Don''t know');

SELECT DISTINCT churn_reason
FROM telecom_customer_data;

UPDATE telecom_customer_data
SET "internet_type" = COALESCE(NULLIF("internet_type", 'NaN'), 'No');
SELECT DISTINCT internet_type
FROM telecom_customer_data;

--create a derived column
ALTER TABLE telecom_customer_data
ADD COLUMN age_group VARCHAR(20);

UPDATE telecom_customer_data
SET age_group = CASE
    WHEN age >= 18 AND age <= 35 THEN 'Young Adult'
    WHEN age >= 36 AND age <= 55 THEN 'Middle Aged Adult'
    WHEN age >= 56 AND age <= 75 THEN 'Senior Citizen'
    WHEN age >= 76 THEN 'Elderly'
    ELSE 'Unknown'
END;
SELECT DISTINCT age_group FROM telecom_customer_data;

UPDATE telecom_analysis
SET "churn_category" = COALESCE(NULLIF("churn_category", 'NaN'), 'Other');

SELECT DISTINCT churn_category
FROM telecom_analysis;

UPDATE telecom_analysis
SET "churn_reason" = COALESCE(NULLIF("churn_reason", 'NaN'), 'Don''t know');

SELECT DISTINCT churn_reason
FROM telecom_analysis;

UPDATE telecom_analysis
SET "internet_type" = COALESCE(NULLIF("internet_type", 'NaN'), 'No');
SELECT DISTINCT internet_type
FROM telecom_analysis;

--create a derived column
ALTER TABLE telecom_analysis
ADD COLUMN age_group VARCHAR(20);

UPDATE telecom_analysis
SET age_group = CASE
    WHEN age >= 18 AND age <= 35 THEN 'Young Adult'
    WHEN age >= 36 AND age <= 55 THEN 'Middle Aged Adult'
    WHEN age >= 56 AND age <= 75 THEN 'Senior Citizen'
    WHEN age >= 76 THEN 'Elderly'
    ELSE 'Unknown'
END;
SELECT DISTINCT age_group FROM telecom_analysis;

--internet type with most number of churn
SELECT internet_type, COUNT(CASE WHEN churn_label = 'True' then 1 END) AS churn_count FROM telecom_customer_data
GROUP BY internet_type
ORDER BY churn_count DESC
LIMIT 10;

--churn rate by contract and internet type
SELECT 
    contract,
    internet_type,
    count(case when churn_label = 'True' then 1 end) as churn
FROM 
    telecom_customer_data
GROUP BY 
    contract, internet_type
ORDER BY 
    churn DESC;











	

