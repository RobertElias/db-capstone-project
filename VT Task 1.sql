CREATE VIEW OrdersView AS
SELECT orders.OrdersID, orders.Quantity, orders.TotalCost
FROM orders
WHERE orders.Quantity > 2