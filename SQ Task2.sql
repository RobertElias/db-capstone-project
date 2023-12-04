CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN TableNumber INT)
SELECT BookingDate, TableNumber
WHERE exists (SELECT * from Bookings where Date = BookingDate and TableNumber = TableNumber)