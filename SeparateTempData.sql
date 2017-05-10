
ALTER PROC separateTempData
  AS
  BEGIN
    BEGIN TRY

      INSERT INTO Person (firstName, lastName) SELECT DISTINCT firstName, lastName FROM TemporaryTable;

      INSERT INTO PersonRolesMapping (idPerson, idRole) SELECT Person.idPerson, (SELECT idRole FROM Roles WHERE title='Presenter') FROM Person WHERE idPerson > 100;
      INSERT INTO PersonRolesMapping (idPerson, idRole) SELECT Person.idPerson, (SELECT idRole FROM Roles WHERE title='Attendee') FROM Person WHERE idPerson > 100;

      DECLARE @count integer = 0;

      WHILE @count < (SELECT COUNT(*) FROM TemporaryTable)
      BEGIN

        INSERT INTO Presentation (title, location) VALUES ((SELECT presentationTitle FROM TemporaryTable WHERE idTempTable=(@count + 1)), (SELECT event FROM TemporaryTable WHERE idTempTable=(@count + 1)));
        INSERT INTO PresentationDifficultyMapping (idPresentation, idClassDifficulty) VALUES ((SELECT TOP 1 idPresentation FROM Presentation ORDER BY idPresentation DESC), (SELECT idClassDifficulty FROM ClassDifficulty WHERE difficulty=(SELECT difficulty FROM TemporaryTable WHERE idTempTable=@count + 1)));
        INSERT INTO PresentationTrackMapping VALUES ((SELECT TOP 1 Track.idTrack FROM Track ORDER BY NEWID()), (SELECT TOP 1 idPresentation FROM Presentation ORDER BY idPresentation DESC));

        INSERT INTO PresenterPresentationMapping (idPresentation, idPresenter)
        VALUES ((SELECT TOP 1 idPresentation FROM Presentation ORDER BY idPresentation DESC),
                (SELECT idPerson FROM Person WHERE firstName=(SELECT firstName FROM TemporaryTable WHERE idTempTable=(@count + 1)) AND lastName=(SELECT lastName FROM TemporaryTable WHERE idTempTable=(@count + 1))));


        SET @count = @count + 1;
      END

      SET @count = 1;
      WHILE @count <= (SELECT COUNT(*) FROM PresenterPresentationMapping)
      BEGIN

        DECLARE @person integer = ((SELECT idPresenter FROM PresenterPresentationMapping WHERE idPresenterPresentation=@count)),
                @presentation integer = ((SELECT idPresentation FROM PresenterPresentationMapping WHERE idPresenterPresentation=@count));

        EXEC insertPresentationIntoSchedule @person, @presentation;

        SET @count = @count + 1;
      END
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END