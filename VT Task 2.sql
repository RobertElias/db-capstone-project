CREATE VIEW OrdersView2 AS
SELECT customer.CustomerID, customer.FullName, orders.OrdersID, orders.TotalCost
FROM customer INNER JOIN orders
WHERE orders.TotalCost > 150
ORDER BY orders.TotalCost DESC;