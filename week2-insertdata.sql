USE littlelemondb;
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
INSERT INTO Orders (OrderID, OrderDate, Type, Quantity, TotalCost, MenuID, CustomerID) VALUES
(1, '2023-01-15', 'Main Course', 2, 180.50, 1, 3),
(2, '2023-02-10', 'Starter', 1, 120.75, 2, 5),
(3, '2023-03-22', 'Main Course', 4, 200.25, 3, 8),
(4, '2023-04-05',  'Main Course', 3, 175.00, 4, 1),
(5, '2023-05-18', 'Dessert', 2, 160.00, 5, 7),
(5, '2023-05-18', 'Dessert', 5, 360.00, 5, 1);

-- Inserting data into the Staff table
INSERT INTO Staff (EmployeeID, EmployeeName, ContactNumber, Role, Annual_Salary) VALUES
(1, 'Michael Johnson', '887-654-3210', 'Chef', 50000.00),
(2, 'Emily Anderson', '987-654-3211', 'Waiter', 25000.00),
(3, 'David Smith', '985-654-3210', 'Bartender', 30000.00),
(4, 'Sophia Clark', '987-654-3310', 'Manager', 60000.00),
(5, 'James Miller', '987-678-3210', 'Hostess', 20000.00),
(6, 'Emma Davis', '987-754-3210', 'Chef', 48000.00),
(7, 'Daniel White', '987-654-3200', 'Waiter', 27000.00),
(8, 'Olivia Johnson', '987-787-3210', 'Bartender', 32000.00),
(9, 'Liam Taylor', '987-654-1234', 'Manager', 58000.00),
(10, 'Grace Moore', '976-654-3210', 'Hostess', 22000.00);

-- Inserting data into the Bookings table
INSERT INTO Bookings (BookingID, CustomerID, TableNumber, BookingDate  )
VALUES 	(1, 5, 1 , "2022-10-10"),
		(2, 3, 3, "2022-11-12"),
		(3, 2, 2, "2022-10-11"),
		(4, 1, 1, "2022-10-13");
        
SELECT * FROM bookings;