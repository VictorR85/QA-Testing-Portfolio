/*
  PROJECT: E-commerce Database Validation
  AUTHOR: Victor Rashchevskyi
  DESCRIPTION: SQL queries used for backend testing of the Shopify-like shop.
*/

-- 1. CHECK: Verify users created today (Sanity Check)
-- Expected Result: Should return users registered within the last 24 hours.
SELECT 
    user_id, 
    email, 
    created_at 
FROM users 
WHERE created_at >= NOW() - INTERVAL 1 DAY;

-- 2. CHECK: Find Orders with "Payment Failed" status but "Shipped" state (Logic Bug)
-- Expected Result: This query should return 0 rows. If rows exist -> BUG found.
SELECT 
    order_id, 
    user_id, 
    payment_status, 
    shipping_status 
FROM orders 
WHERE payment_status = 'failed' 
  AND shipping_status = 'shipped';

-- 3. CHECK: Identify Products with Negative Stock (Data Integrity)
-- Expected Result: Stock quantity cannot be less than 0.
SELECT 
    product_name, 
    sku, 
    stock_quantity 
FROM products 
WHERE stock_quantity < 0;

-- 4. JOIN CHECK: Get High-Value Customers (VIP testing)
-- Scenario: Testing the logic for assigning VIP status.
SELECT 
    u.email, 
    COUNT(o.order_id) as total_orders, 
    SUM(o.total_amount) as total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.email
HAVING total_spent > 500
ORDER BY total_spent DESC;
