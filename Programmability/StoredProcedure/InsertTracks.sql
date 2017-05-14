
CREATE PROC insertTracks
  AS
  BEGIN
    BEGIN TRY

      INSERT INTO Track VALUES ('Application And Database Development');
      INSERT INTO Track VALUES ('Analytics And Visualization');
      INSERT INTO Track VALUES ('Advanced Analysis Techniques');
      INSERT INTO Track VALUES ('Cloud Application Development');
      INSERT INTO Track VALUES ('Enterprise Database Administration');

    END TRY
    BEGIN CATCH
    END CATCH
  END