-- =========================================
-- CORE SQL PRACTICE QUERIES (POSTGRESQL)
-- SELECT, JOIN, WHERE, ORDER BY
-- =========================================

-- =========================================
-- JOIN: CUSTOMERS + CLAIMS
-- Purpose: View claims with customer details
-- Demonstrates INNER JOIN and ordering results
-- =========================================

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    cl.claim_id,
    cl.claim_date,
    cl.claim_amount
FROM customers c
JOIN claims cl 
    ON c.customer_id = cl.customer_id
ORDER BY cl.claim_date;

-- =========================================
-- JOIN: CLAIMS + POLICIES
-- Purpose: Link claims to policy information
-- Demonstrates relational joins across tables
-- =========================================

SELECT 
    cl.claim_id,
    cl.claim_date,
    cl.claim_amount,
    p.policy_number,
    p.policy_type
FROM claims cl
JOIN policies p 
    ON cl.policy_id = p.policy_id
ORDER BY cl.claim_amount DESC;

-- =========================================
-- FILTERING WITH WHERE
-- Purpose: Retrieve high-value claims
-- Demonstrates conditional filtering
-- =========================================

SELECT 
    claim_id,
    customer_id,
    claim_amount,
    claim_date
FROM claims
WHERE claim_amount > 1000
ORDER BY claim_amount DESC;

-- =========================================
-- FILTER NULL VALUES
-- Purpose: Identify active policies (no end date)
-- Demonstrates NULL handling
-- =========================================

SELECT 
    policy_id,
    policy_number,
    policy_type,
    start_date,
    end_date
FROM policies
WHERE end_date IS NULL;

-- =========================================
-- SORTING DATA
-- Purpose: Display customers alphabetically
-- Demonstrates ORDER BY usage
-- =========================================

SELECT 
    customer_id,
    first_name,
    last_name
FROM customers
ORDER BY last_name ASC;

