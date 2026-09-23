--=======================================
-- CUSTOMER SHOPPING BEHAVIOR ANALYSIS
--=======================================

-- 1. DATABASE SETUP
CREATE DATABASE customer_shopping_db;

USE customer_shopping_db;

-- 2. CREATE TABLE

CREATE TABLE customer_shopping (
    customer_id INT,
    age INT,
    gender VARCHAR(20),
    item_purchased VARCHAR(50),
    category VARCHAR(50),
    purchase_amount DECIMAL(10,2),
    location VARCHAR(50),
    size VARCHAR(10),
    color VARCHAR(30),
    season VARCHAR(20),
    review_rating DECIMAL(3,1),
    subscription_status VARCHAR(20),
    shipping_type VARCHAR(30),
    discount_applied VARCHAR(20),
    previous_purchases INT,
    payment_method VARCHAR(30),
    frequency_of_purchases VARCHAR(30),
    age_group VARCHAR(30),
    purchase_frequency_days INT
);

-- 3. IMPORT DATA
-- Data imported using MySQL Workbench
-- Table Data Import Wizard.
-- Source: customer_shopping_cleaned.csv


-- 4. DATA VERIFICATION

USE customer_shopping_db;
SELECT COUNT(*) AS total_rows FROM customer_shopping;

-- 5. DATA QUALITY CHECKS

-- Check for duplicate customer IDs
SELECT customer_id, COUNT(*) AS duplicate_count FROM customer_shopping GROUP BY customer_id HAVING COUNT(*) > 1;

-- Check for NULL values

SELECT COUNT(*) AS total_rows, COUNT(customer_id) AS customer_ids, COUNT(age) AS ages, COUNT(purchase_amount) AS purchase_amounts,COUNT(review_rating) AS review_ratings FROM customer_shopping;
