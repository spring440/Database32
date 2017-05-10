
CREATE PROC selectPresentationBudapest
  AS
  BEGIN
    BEGIN TRY

      select * from CompleteClassViewWithTrack WHERE location='Budapest' ORDER BY trackName;

    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END