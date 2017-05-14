
--Create the tables first.

EXEC createTables;

--Initialize primary data.

EXEC insertTracks;
EXEC insertRooms;
EXEC insertSponsors;
EXEC insertTimeSlots;
EXEC insertRoles;
EXEC insertClassDifficulties;
EXEC insertPersons;
EXEC insertTempTable;
EXEC insertEvents;
EXEC separateTempData;