-- Create the prepared statement
PREPARE GetOrderDetail FROM 'SELECT OrdersID, Quantity, TotalCost FROM Orders WHERE Customer_CustomerID = ?';

-- Declare a variable for CustomerID
SET @CustomerID = 1;

-- Execute the prepared statement using the variable
EXECUTE GetOrderDetail USING @CustomerID;
