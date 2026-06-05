-- =========================================
-- SQL FOR DATA ENGINEERING PROJECT
-- PostgreSQL Implementation
-- =========================================

-- =========================
-- CUSTOMERS TABLE
-- =========================
CREATE TABLE customers (
    customer_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender CHAR(1),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10)
);

-- =========================
-- POLICY TYPES TABLE (LOOKUP TABLE)
-- =========================
CREATE TABLE policy_types (
    policy_type_id SERIAL PRIMARY KEY,
    policy_type_name VARCHAR(50) NOT NULL,
    description TEXT
);

-- =========================
-- POLICIES TABLE
-- =========================
CREATE TABLE policies (
    policy_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_id INT NOT NULL,
    policy_number VARCHAR(50) UNIQUE NOT NULL,
    policy_type_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    premium_amount DECIMAL(10,2) NOT NULL,
    coverage_amount DECIMAL(12,2) NOT NULL,

    policy_status VARCHAR(20) DEFAULT 'Active'
        CHECK (policy_status IN ('Active', 'Expired', 'Cancelled')),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_policy_type
        FOREIGN KEY (policy_type_id)
        REFERENCES policy_types(policy_type_id)
);

-- =========================
-- CLAIMS TABLE
-- =========================
CREATE TABLE claims (
    claim_id SERIAL PRIMARY KEY,
    policy_id INT,
    customer_id INT,
    claim_date DATE,
    claim_amount DECIMAL(10,2),
    claim_description TEXT,
    claim_status VARCHAR(20),

    CONSTRAINT fk_policy
        FOREIGN KEY (policy_id)
        REFERENCES policies(policy_id),

    CONSTRAINT fk_customer_claim
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- =========================
-- ORDERS TABLE (BUSINESS TRANSACTIONS)
-- =========================
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),

    CONSTRAINT fk_customer_order
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
