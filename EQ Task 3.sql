DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(IN p_BookingID INT)
BEGIN
    DELETE FROM booking WHERE booking_id = p_BookingID; 
END//

DELIMITER ;
