DELIMITER //

CREATE PROCEDURE UpdateBooking (
    IN p_BookingID INT,
    IN p_Date DATE
)
BEGIN
    UPDATE bookings SET `date` = p_Date WHERE booking_id = p_BookingID; 
END//

DELIMITER ;
