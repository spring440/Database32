
CREATE PROCEDURE insertClassDifficulties
  AS
  BEGIN
    BEGIN TRY

      INSERT INTO ClassDifficulty VALUES ('Non-Technical');
      INSERT INTO ClassDifficulty VALUES ('Beginner');
      INSERT INTO ClassDifficulty VALUES ('Intermediate');
      INSERT INTO ClassDifficulty VALUES ('Advanced');
    END TRY
    BEGIN CATCH

      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END