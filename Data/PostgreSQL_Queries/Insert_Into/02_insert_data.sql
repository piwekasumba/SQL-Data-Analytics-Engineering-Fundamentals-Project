-- ==========================================
-- SAMPLE DATA
-- Insurance Claims Risk Analytics Project
-- Simulated Business Dataset
-- ==========================================

-- =========================
-- CUSTOMERS
-- =========================

INSERT INTO customers (
    first_name,
    last_name,
    date_of_birth,
    gender,
    address,
    city,
    state,
    zip_code
)
VALUES
('John','Doe','1990-05-14','M','12 Oak Street','Johannesburg','Gauteng','2000'),
('Sarah','Smith','1988-09-22','F','45 Pine Road','Cape Town','Western Cape','8001'),
('Michael','Brown','1995-03-10','M','78 Maple Avenue','Durban','KwaZulu-Natal','4001'),
('Emily','Davis','1992-11-05','F','33 River Street','Pretoria','Gauteng','0001'),
('David','Miller','1985-07-19','M','90 Hill Lane','Bloemfontein','Free State','9301');



-- =========================
-- POLICY TYPES
-- =========================

INSERT INTO policytypes (
    policytypename,
    description
)
VALUES
('Health','Medical insurance covering hospital and treatment costs'),
('Motor','Vehicle insurance covering accidents and vehicle damage'),
('Home','Residential property insurance'),
('Life','Life insurance'),
('Travel','Travel insurance');



-- =========================
-- POLICIES
-- =========================

INSERT INTO policies (
    customer_id,
    policy_number,
    policy_type,
    start_date,
    end_date,
    premium_amount,
    coverage_amount,
    policy_status
)
VALUES
(1,'POL1001','Motor','2023-01-01',NULL,1200.00,50000.00,'Active'),
(2,'POL1002','Health','2023-02-15',NULL,850.00,75000.00,'Active'),
(3,'POL1003','Home','2023-03-10',NULL,1500.00,100000.00,'Active'),
(4,'POL1004','Life','2022-08-20','2025-08-20',2000.00,250000.00,'Active'),
(5,'POL1005','Motor','2023-09-01',NULL,950.00,45000.00,'Active');



-- =========================
-- ORDERS
-- Example Business Transactions
-- =========================

INSERT INTO orders (
    customer_id,
    order_date,
    product_name,
    quantity,
    unit_price,
    total_amount
)
VALUES
(1,'2023-02-10','Laptop',1,12000.00,12000.00),
(2,'2023-03-12','Wireless Headphones',2,1500.00,3000.00),
(3,'2023-04-18','Office Chair',1,3200.00,3200.00),
(4,'2023-05-22','Desk Lamp',3,800.00,2400.00),
(5,'2023-06-30','Wireless Mouse',2,500.00,1000.00),
(1,'2023-07-15','Mechanical Keyboard',1,900.00,900.00);



-- =========================
-- INSURANCE CLAIMS
-- =========================

INSERT INTO claims (
    policy_id,
    customer_id,
    claim_date,
    claim_amount,
    claim_description,
    claim_status
)
VALUES
(1,1,'2023-06-10',18500.00,'Vehicle collision damage','Approved'),
(2,2,'2023-07-15',7200.00,'Hospital admission','Approved'),
(3,3,'2023-08-05',42000.00,'Storm damage to residential property','Pending'),
(1,1,'2023-09-01',3500.00,'Windscreen replacement','Approved'),
(5,5,'2023-09-10',14500.00,'Vehicle accident repair','Under Review');
