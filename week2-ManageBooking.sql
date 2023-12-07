USE littlelemondb;

DELIMITER //

DROP PROCEDURE IF EXISTS ManageBooking//

CREATE PROCEDURE ManageBooking(IN BookDate DATE, IN TableNumber INT)
BEGIN
    SELECT CONCAT('Table ', TableNumber, ' is already booked for ', BookingDate, '.') AS BOOKING_STATUS
    FROM Bookings
    WHERE BookingDate = BookDate AND TableNumber = TableNumber;
END//

DELIMITER ;
CALL ManageBooking('2022-11-12', 3);
