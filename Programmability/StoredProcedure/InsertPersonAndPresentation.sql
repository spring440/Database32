
ALTER PROC insertPersonAndPresentation @firstName VARCHAR(55), @lastName VARCHAR(55), @title VARCHAR(255), @location VARCHAR(255)
  AS
  BEGIN
    BEGIN TRY

      IF EXISTS (SELECT * FROM Person WHERE firstName=@firstName AND lastName=@lastName)
        BEGIN

          INSERT INTO Presentation (title, location) VALUES (@title, @location);

          INSERT INTO PresenterPresentationMapping VALUES (
            (SELECT TOP 1 idPresentation FROM Presentation ORDER BY idPresentation DESC),
            (SELECT idPerson FROM Person WHERE firstName=@firstName AND lastName=@lastName)
          );
        END
      ELSE
        BEGIN

          INSERT INTO Person (firstName, lastName) VALUES (@firstName, @lastName)
          INSERT INTO Presentation (title, location) VALUES (@title, @location);

          INSERT INTO PersonRolesMapping VALUES (
            (SELECT TOP 1 idPerson FROM Person ORDER BY idPerson DESC),
            (SELECT idRole FROM Roles WHERE title='Presenter')
          );

          INSERT INTO PresenterPresentationMapping VALUES (
            (SELECT TOP 1 idPresentation FROM Presentation ORDER BY idPresentation DESC),
            (SELECT TOP 1 idPerson FROM Person ORDER BY idPerson DESC)
          );
        END
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END