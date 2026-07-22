-- =====================================================
-- INSURANCE CLAIMS REPORTING DATABASE
-- PostgreSQL Relational Database Schema
-- =====================================================

-- =====================================================
-- CUSTOMERS
-- Stores customer information used across reporting
-- =====================================================

CREATE TABLE customers (
    customer_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender CHAR(1)
        CHECK (gender IN ('M','F')),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    address VARCHAR(100),
    city VARCHAR(50),
    province VARCHAR(50),
    postal_code VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- POLICY TYPES
-- Lookup table for insurance products
-- =====================================================

CREATE TABLE policy_types (
    policy_type_id SERIAL PRIMARY KEY,
    policy_type_name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT
);

-- =====================================================
-- POLICIES
-- Stores customer insurance policies
-- =====================================================

CREATE TABLE policies (
    policy_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    customer_id INT NOT NULL,

    policy_number VARCHAR(50) UNIQUE NOT NULL,

    policy_type_id INT NOT NULL,

    start_date DATE NOT NULL,

    end_date DATE,

    premium_amount NUMERIC(10,2) NOT NULL
        CHECK (premium_amount > 0),

    coverage_amount NUMERIC(12,2) NOT NULL
        CHECK (coverage_amount > 0),

    policy_status VARCHAR(20) NOT NULL
        DEFAULT 'Active'
        CHECK (
            policy_status IN (
                'Active',
                'Expired',
                'Cancelled'
            )
        ),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_policy_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_policy_type
        FOREIGN KEY (policy_type_id)
        REFERENCES policy_types(policy_type_id)
);

-- =====================================================
-- CLAIMS
-- Stores insurance claims submitted by customers
-- =====================================================

CREATE TABLE claims (

    claim_id SERIAL PRIMARY KEY,

    policy_id INT NOT NULL,

    customer_id INT NOT NULL,

    claim_date DATE NOT NULL,

    processed_date DATE,

    claim_amount NUMERIC(12,2) NOT NULL
        CHECK (claim_amount > 0),

    claim_type VARCHAR(50),

    claim_status VARCHAR(20)
        DEFAULT 'Pending'
        CHECK (
            claim_status IN (
                'Pending',
                'Approved',
                'Rejected',
                'Under Review'
            )
        ),

    claim_description TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_claim_policy
        FOREIGN KEY (policy_id)
        REFERENCES policies(policy_id),

    CONSTRAINT fk_claim_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- =====================================================
-- ORDERS
-- Stores customer purchase transactions
-- =====================================================

CREATE TABLE orders (

    order_id SERIAL PRIMARY KEY,

    customer_id INT NOT NULL,

    order_date DATE NOT NULL,

    product_name VARCHAR(100) NOT NULL,

    quantity INT NOT NULL
        CHECK (quantity > 0),

    unit_price NUMERIC(10,2) NOT NULL
        CHECK (unit_price > 0),

    total_amount NUMERIC(12,2) NOT NULL
        CHECK (total_amount > 0),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- =====================================================
-- INDEXES
-- Improve reporting query performance
-- =====================================================

CREATE INDEX idx_customer_city
ON customers(city);

CREATE INDEX idx_policy_number
ON policies(policy_number);

CREATE INDEX idx_policy_status
ON policies(policy_status);

CREATE INDEX idx_claim_date
ON claims(claim_date);

CREATE INDEX idx_claim_status
ON claims(claim_status);

CREATE INDEX idx_order_date
ON orders(order_date);

CREATE INDEX idx_order_customer
ON orders(customer_id);
