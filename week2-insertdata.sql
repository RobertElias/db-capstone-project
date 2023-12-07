-- Inserting data into the Customer table
INSERT INTO Customer (CustomerID, CustomerFirstName, CustomerLastName, ContactNumber) VALUES
(1, 'John', 'Doe', '123-456-7890'),
(2, 'Jane', 'Smith', '987-654-3210'),
(3, 'Alice', 'Johnson', '555-123-4567'),
(4, 'Bob', 'Williams', '888-999-0000'),
(5, 'Eva', 'Brown', '444-777-1111'),
(6, 'Charlie', 'Davis', '222-333-4444'),
(7, 'Grace', 'Moore', '111-222-3333'),
(8, 'Daniel', 'White', '999-888-7777'),
(9, 'Olivia', 'Miller', '777-555-9999'),
(10, 'Liam', 'Taylor', '444-666-8888');

-- Inserting data into the Menu table
INSERT INTO Menu (MenuID, ItemName, Type, Cuisine, Price) VALUES
(1, 'Chicken Curry', 'Main Course', 'Indian', 12.99),
(2, 'Vegetarian Pizza', 'Starter', 'Italian', 9.99),
(3, 'Salmon Steak', 'Main Course', 'Seafood', 18.50),
(4, 'Pasta Carbonara', 'Main Course', 'Italian', 15.75),
(5, 'Chocolate Cake', 'Dessert', 'American', 6.99),
(6, 'Margarita Cocktail', 'Drink', 'Mexican', 8.50),
(7, 'Caesar Salad', 'Starter', 'American', 10.25),
(8, 'Beef Burger', 'Main Course', 'American', 14.99),
(9, 'Fruit Sorbet', 'Dessert', 'Mediterranean', 5.25),
(10, 'Iced Coffee', 'Drink', 'American', 4.50);

-- Inserting data into the Orders table
INSERT INTO Orders (OrderID, OrderDate, Quantity, OrderType, TotalCost, MenuID, MenuItemID, CustomerID) VALUES
(1, '2023-01-15', 2, 'Dine-in', 180.50, 1, 1, 3),
(2, '2023-02-10', 1, 'Takeout', 120.75, 2, 4, 5),
(3, '2023-03-22', 4, 'Delivery', 200.25, 3, 7, 8),
(4, '2023-04-05', 3, 'Dine-in', 175.00, 4, 10, 1),
(5, '2023-05-18', 2, 'Takeout', 160.00, 5, 2, 7),
(6, '2023-06-30', 1, 'Dine-in', 152.75, 6, 5, 9),
(7, '2023-07-12', 3, 'Delivery', 165.50, 7, 8, 2),
(8, '2023-08-25', 2, 'Takeout', 185.75, 8, 9, 4),
(9, '2023-09-08', 1, 'Dine-in', 160.00, 9, 3, 6),
(10, '2023-10-19', 5, 'Delivery', 210.30, 10, 6, 10);

-- Inserting data into the Staff table
INSERT INTO Staff (EmployeeID, EmployeeName, Role, Salary) VALUES
(1, 'Michael Johnson', 'Chef', 50000.00),
(2, 'Emily Anderson', 'Waiter', 25000.00),
(3, 'David Smith', 'Bartender', 30000.00),
(4, 'Sophia Clark', 'Manager', 60000.00),
(5, 'James Miller', 'Hostess', 20000.00),
(6, 'Emma Davis', 'Chef', 48000.00),
(7, 'Daniel White', 'Waiter', 27000.00),
(8, 'Olivia Johnson', 'Bartender', 32000.00),
(9, 'Liam Taylor', 'Manager', 58000.00),
(10, 'Grace Moore', 'Hostess', 22000.00);

-- Inserting data into the Bookings table
INSERT INTO Bookings (Date, TableNumber, CustomerID)
VALUES 	("2022-10-10", 5, 1),
		("2022-11-12", 3, 3),
		("2022-10-11", 2, 2),
		("2022-10-13", 2, 1);
        
SELECT * FROM bookings;