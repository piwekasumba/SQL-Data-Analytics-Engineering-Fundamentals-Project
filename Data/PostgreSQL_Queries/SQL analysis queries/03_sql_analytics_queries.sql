-- ==========================================================
-- REPORTING QUERIES
-- Insurance Claims Risk Analytics
-- PostgreSQL
-- ==========================================================
-- These queries demonstrate the SQL skills used to retrieve,
-- analyse and report business information from a relational
-- insurance database.
-- ==========================================================


-- ==========================================================
-- BUSINESS QUESTION
-- Which customers submitted insurance claims and what were
-- the details of each claim?
--
-- BUSINESS PURPOSE
-- Supports operational claims reporting by combining customer
-- and claims data into a single reporting dataset.
--
-- REPORT OUTPUT
-- Customer information with claim dates and claim values.
-- ==========================================================

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    cl.claim_id,
    cl.claim_date,
    cl.claim_amount
FROM customers AS c
INNER JOIN claims AS cl
    ON c.customer_id = cl.customer_id
ORDER BY cl.claim_date;


-- ==========================================================
-- BUSINESS QUESTION
-- Which insurance policies are associated with submitted
-- claims?
--
-- BUSINESS PURPOSE
-- Supports policy performance reporting by linking claims to
-- their corresponding insurance policies.
--
-- REPORT OUTPUT
-- Policy information with related claim values.
-- ==========================================================

SELECT
    cl.claim_id,
    cl.claim_date,
    cl.claim_amount,
    p.policy_number,
    p.policy_type
FROM claims AS cl
INNER JOIN policies AS p
    ON cl.policy_id = p.policy_id
ORDER BY cl.claim_amount DESC;


-- ==========================================================
-- BUSINESS QUESTION
-- Which claims exceed the high-value reporting threshold?
--
-- BUSINESS PURPOSE
-- Helps claims teams identify higher-cost claims that may
-- require additional review or management attention.
--
-- REPORT OUTPUT
-- High-value insurance claims ranked by claim amount.
-- ==========================================================

SELECT
    claim_id,
    customer_id,
    claim_amount,
    claim_date
FROM claims
WHERE claim_amount > 1000
ORDER BY claim_amount DESC;


-- ==========================================================
-- BUSINESS QUESTION
-- Which insurance policies are currently active?
--
-- BUSINESS PURPOSE
-- Supports operational reporting by identifying policies
-- without a recorded end date.
--
-- REPORT OUTPUT
-- List of active insurance policies.
-- ==========================================================

SELECT
    policy_id,
    policy_number,
    policy_type,
    start_date,
    end_date
FROM policies
WHERE end_date IS NULL;


-- ==========================================================
-- BUSINESS QUESTION
-- What is the current customer listing in alphabetical order?
--
-- BUSINESS PURPOSE
-- Produces a structured customer reference list that can be
-- used for reporting, validation and operational review.
--
-- REPORT OUTPUT
-- Customer list ordered alphabetically by surname.
-- ==========================================================

SELECT
    customer_id,
    first_name,
    last_name
FROM customers
ORDER BY last_name ASC;

