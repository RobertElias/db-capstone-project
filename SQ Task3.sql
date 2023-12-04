CREATE PROCEDURE AddValidBooking (IN BookingDate DATE, IN TableNumber INT)

START TRANSACTION;

SELECT BookingDate, TableNumber
WHERE exists (SELECT * from Bookings where Date = BookingDate and TableNumber = TableNumber)

	INSERT INTO bookings (DATE, TableNumber)
	VALUES (Date, TableNumber);
    
    COMMIT