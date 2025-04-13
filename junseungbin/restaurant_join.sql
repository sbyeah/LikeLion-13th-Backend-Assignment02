SELECT
    customers.name AS 고객명,
    orders.menu_item AS 주문메뉴
FROM
    orders
JOIN
    customers
ON
    orders.customer_id = customers.id;
