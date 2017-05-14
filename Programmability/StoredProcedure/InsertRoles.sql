
CREATE PROCEDURE insertRoles
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO Roles VALUES ('Presenter');
      INSERT INTO Roles VALUES ('Attendee');
      INSERT INTO Roles VALUES ('Organizer');
      INSERT INTO Roles VALUES ('Volunteer');
      INSERT INTO Roles VALUES (' Sponsor');
    END TRY
    BEGIN CATCH
    END CATCH
  END