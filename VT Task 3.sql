CREATE VIEW MenuItemsWithMoreThanTwoOrders AS
SELECT Name
FROM menu
WHERE MenuID = ANY (
    SELECT MenuID
    FROM orders
    GROUP BY MenuID
    HAVING SUM(Quantity) > 2
);
