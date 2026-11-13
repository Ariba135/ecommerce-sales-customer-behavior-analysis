USE olist_ecommerce;

-- 1. Total Sales Revenue

SELECT
    ROUND(SUM(oi.price), 2) AS total_sales_revenue
FROM order_items AS oi
INNER JOIN orders AS o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered';
-- 2. Total Delivered Orders

SELECT
    COUNT(DISTINCT order_id) AS total_delivered_orders
FROM orders
WHERE order_status = 'delivered';
-- 3. Average Order Value

SELECT
    ROUND(
        SUM(oi.price) / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value
FROM order_items AS oi
INNER JOIN orders AS o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered';
-- 4. Top 10 Product Categories by Revenue

SELECT
    COALESCE(
        ct.product_category_name_english,
        p.product_category_name,
        'Unknown'
    ) AS product_category,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items AS oi
INNER JOIN orders AS o
    ON oi.order_id = o.order_id
INNER JOIN products AS p
    ON oi.product_id = p.product_id
LEFT JOIN category_translation AS ct
    ON p.product_category_name = ct.product_category_name
WHERE o.order_status = 'delivered'
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 10;
-- 5. Revenue by Customer State

SELECT
    c.customer_state,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items AS oi
INNER JOIN orders AS o
    ON oi.order_id = o.order_id
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_revenue DESC;
-- 6. Payment Method Analysis

SELECT
    p.payment_type,
    ROUND(SUM(p.payment_value), 2) AS total_payment_value,
    COUNT(*) AS payment_records,
    COUNT(DISTINCT p.order_id) AS unique_orders
FROM payments AS p
INNER JOIN orders AS o
    ON p.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY p.payment_type
ORDER BY total_payment_value DESC;
-- 7. Average Customer Review Score

SELECT
    ROUND(AVG(review_score), 2) AS average_review_score
FROM reviews;
-- 8. Average Delivery Time in Days

SELECT
    ROUND(
        AVG(
            TIMESTAMPDIFF(
                SECOND,
                order_purchase_timestamp,
                order_delivered_customer_date
            ) / 86400.0
        ),
        2
    ) AS average_delivery_time_days
FROM orders
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL;
  -- 9. Repeat Customer Analysis

SELECT
    COUNT(*) AS repeat_customers
FROM (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM orders AS o
    INNER JOIN customers AS c
        ON o.customer_id = c.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
    HAVING COUNT(DISTINCT o.order_id) >= 2
) AS repeat_customer_list;
SELECT
    ROUND(
        SUM(oi.price) / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value
FROM order_items AS oi
INNER JOIN orders AS o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered';
-- 4. Top 10 Product Categories by Revenue

SELECT
    COALESCE(
        ct.product_category_name_english,
        p.product_category_name,
        'Unknown'
    ) AS product_category,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items AS oi
INNER JOIN orders AS o
    ON oi.order_id = o.order_id
INNER JOIN products AS p
    ON oi.product_id = p.product_id
LEFT JOIN category_translation AS ct
    ON p.product_category_name = ct.product_category_name
WHERE o.order_status = 'delivered'
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 10;