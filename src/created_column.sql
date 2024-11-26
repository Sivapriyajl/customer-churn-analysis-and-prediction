CREATE TABLE telecom_analysis (
    customer_id VARCHAR(50),  
    gender VARCHAR(50),
    age INT,
    under_30 BOOLEAN,
    senior_citizen BOOLEAN,
    married BOOLEAN,
    dependents BOOLEAN,
    number_of_dependents INT,
    country VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    zip_code VARCHAR(20),
	latitude NUMERIC(9, 6),
    longitude NUMERIC(9, 6),
    population INT,
    quarter VARCHAR(50),
    referred_a_friend BOOLEAN,
    number_of_referrals INT,
    tenure_in_months INT,
    offer VARCHAR(50),
    phone_service BOOLEAN,
    avg_monthly_long_distance_charges NUMERIC(10, 2),
    multiple_lines BOOLEAN,
    internet_service BOOLEAN,
    internet_type VARCHAR(50),
    avg_monthly_gb_download INT,
    online_security BOOLEAN,
    online_backup BOOLEAN,
    device_protection_plan BOOLEAN,
    premium_tech_support BOOLEAN,
    streaming_tv BOOLEAN,
    streaming_movies BOOLEAN,
    streaming_music BOOLEAN,
    unlimited_data BOOLEAN,
    contract VARCHAR(50),
    paperless_billing BOOLEAN,
    payment_method VARCHAR(50),
    monthly_charge NUMERIC(10, 2),
    total_charges NUMERIC(10, 2),
    total_refunds NUMERIC(10, 2),
    total_extra_data_charges NUMERIC(10, 2),
    total_long_distance_charges NUMERIC(10, 2),
    total_revenue NUMERIC(10, 2),
    satisfaction_score INT,
    customer_status VARCHAR(50),
    churn_label BOOLEAN, 
    churn_score INT,
    cltv NUMERIC(10, 2),
    churn_category VARCHAR(50),
    churn_reason VARCHAR(255)
);
ALTER TABLE telecom_analysis
DROP COLUMN under_30;

ALTER TABLE telecom_analysis
DROP COLUMN senior_citizen;

ALTER TABLE telecom_analysis
DROP COLUMN married;

ALTER TABLE telecom_analysis
DROP COLUMN dependents;

ALTER TABLE telecom_analysis
DROP COLUMN latitude;
ALTER TABLE telecom_analysis
DROP COLUMN longitude;
ALTER TABLE telecom_analysis
DROP COLUMN referred_a_friend;
ALTER TABLE telecom_analysis
DROP COLUMN offer;
ALTER TABLE telecom_analysis
DROP COLUMN zip_code;
ALTER TABLE telecom_analysis
DROP COLUMN population;
ALTER TABLE telecom_analysis
DROP COLUMN multiple_lines;