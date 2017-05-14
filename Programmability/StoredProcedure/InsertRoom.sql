
ALTER PROC insertRooms
  AS 
  BEGIN 
    BEGIN TRY 
      INSERT INTO Room VALUES ('A-1');
      INSERT INTO Room VALUES ('A-2');
      INSERT INTO Room VALUES ('A-3');
      INSERT INTO Room VALUES ('A-4');
      INSERT INTO Room VALUES ('A-5');
      INSERT INTO Room VALUES ('A-6');
      INSERT INTO Room VALUES ('A-7');
      INSERT INTO Room VALUES ('B-1');
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END