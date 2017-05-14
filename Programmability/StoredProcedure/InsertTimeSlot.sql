
ALTER PROC insertTimeSlots
  AS
  BEGIN
    BEGIN TRY

      INSERT INTO TimeSlot (timeStart) VALUES ('8:00 AM');
      INSERT INTO TimeSlot (timeStart) VALUES ('9:00 AM');
      INSERT INTO TimeSlot (timeStart) VALUES ('10:00 AM');
      INSERT INTO TimeSlot (timeStart) VALUES ('11:00 AM');
      INSERT INTO TimeSlot (timeStart) VALUES ('12:00 PM');
      INSERT INTO TimeSlot (timeStart) VALUES ('1:00 PM');
      INSERT INTO TimeSlot (timeStart) VALUES ('2:00 PM');
      INSERT INTO TimeSlot (timeStart) VALUES ('3:00 PM');
      INSERT INTO TimeSlot (timeStart) VALUES ('4:00 PM');
      INSERT INTO TimeSlot (timeStart) VALUES ('5:00 PM');
      INSERT INTO TimeSlot (timeStart) VALUES ('6:00 PM');

    END TRY
    BEGIN CATCH
    END CATCH
  END