
ALTER PROCEDURE createTables
  AS
  BEGIN

    DROP TABLE PresenterPresentationMapping;
    DROP TABLE PresentationTrackMapping;
    DROP TABLE EventScheduleMapping;
    DROP TABLE PresentationDifficultyMapping;
    DROP TABLE Schedule;
    DROP TABLE PersonRolesMapping;


    DROP TABLE Sponsor;
    DROP TABLE Person;
    DROP TABLE Roles;
    DROP TABLE Event;
    DROP TABLE EventTable;
    DROP TABLE ClassDifficulty;
    DROP TABLE Presentation;
    DROP TABLE Room;
    DROP TABLE TimeSlot;
    DROP TABLE Track;
    DROP TABLE TemporaryTable;

    CREATE TABLE Person(
      idPerson INT IDENTITY PRIMARY KEY,
      firstName VARCHAR(45) NOT NULL,
      lastName VARCHAR(45) NOT NULL,
      street VARCHAR(255),
      city VARCHAR(255),
      postalCode VARCHAR(45),
      state VARCHAR(255),
      email VARCHAR(255),
      UNIQUE(firstName, lastName)
    );

    CREATE TABLE Roles(
      idRole INT IDENTITY PRIMARY KEY,
      title VARCHAR(45) NOT NULL UNIQUE
    );

    CREATE TABLE PersonRolesMapping(
      idPersonRoles INT IDENTITY PRIMARY KEY,
      idPerson INT NOT NULL FOREIGN KEY REFERENCES Person(idPerson),
      idRole INT NOT NULL FOREIGN KEY REFERENCES Roles(idRole),
      UNIQUE (idPerson, idRole)
    );

    CREATE TABLE Event(
      idEvent INT IDENTITY PRIMARY KEY,
      eventDate VARCHAR(255) NOT NULL,
      eventName VARCHAR(255) NOT NULL,
      eventCity VARCHAR(55) NOT NULL UNIQUE,
      eventRegion VARCHAR(255) NOT NULL
    );

    CREATE TABLE EventTable(
      idEventTable INT IDENTITY PRIMARY KEY,
      number INT NOT NULL UNIQUE
    );

    CREATE TABLE ClassDifficulty(
      idClassDifficulty INT IDENTITY PRiMARY KEY,
      difficulty VARCHAR(45) NOT NULL UNIQUE
    );

    CREATE TABLE Presentation(
      idPresentation INT IDENTITY PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      location VARCHAR(45)
    );

    CREATE TABLE Room(
      idRoom INT IDENTITY PRIMARY KEY,
      roomNumber VARCHAR(55)
    );

    CREATE TABLE TimeSlot(
      idTimeSlot INT IDENTITY PRIMARY KEY,
      timeStart VARCHAR(55) NOT NULL UNIQUE
    );

    CREATE TABLE Track(
      idTrack INT IDENTITY PRIMARY KEY,
      trackName VARCHAR(55) NOT NULL UNIQUE,
    );

    CREATE TABLE Schedule(
      idSchedule INT IDENTITY PRIMARY KEY,
      eventSchedule INT,
      idPresentation INT NOT NULL UNIQUE FOREIGN KEY REFERENCES Presentation(idPresentation),
      idRoom INT NOT NULL FOREIGN KEY REFERENCES Room(idRoom),
      idTimeSlot INT NOT NULL FOREIGN KEY REFERENCES TimeSlot(idTimeSlot),
      UNIQUE(eventSchedule, idRoom, idTimeSlot)
    );

    CREATE TABLE Sponsor(
      idSponsor INT IDENTITY PRIMARY KEY,
      sponsorName VARCHAR(55) NOT NULL,
      sponsorLevel VARCHAR(55) NOT NULL,
    );

    CREATE TABLE PresentationDifficultyMapping (
      idPresentationDifficulty INT IDENTITY PRIMARY KEY,
      idPresentation INT NOT NULL UNIQUE FOREIGN KEY REFERENCES Presentation(idPresentation),
      idClassDifficulty INT NOT NULL FOREIGN KEY REFERENCES classDifficulty(idClassDifficulty)
    );

    CREATE TABLE EventScheduleMapping(
      idEventSchedule INT IDENTITY PRIMARY KEY,
      idEvent INT UNIQUE FOREIGN KEY REFERENCES Event(idEvent),
      idSchedule INT UNIQUE
    );

    CREATE TABLE PresentationTrackMapping(
      idPresentationTrack INT IDENTITY PRIMARY KEY,
      idTrack INT NOT NULL FOREIGN KEY REFERENCES Track(idTrack),
      idPresentation INT NOT NULL FOREIGN KEY REFERENCES Presentation(idPresentation),
    );

    CREATE TABLE PresenterPresentationMapping(
      idPresenterPresentation INT IDENTITY PRIMARY KEY,
      idPresentation INT NOT NULL FOREIGN KEY REFERENCES Presentation(idPresentation),
      idPresenter INT NOT NULL FOREIGN KEY REFERENCES Person(idPerson),
      UNIQUE(idPresentation, idPresenter)
    );

    CREATE TABLE TemporaryTable(
      idTempTable INT IDENTITY PRIMARY KEY,
      presentationTitle VARCHAR(255),
      firstName VARCHAR(45),
      lastName VARCHAR(45),
      difficulty VARCHAR(45),
      event VARCHAR(255)
    );

  END