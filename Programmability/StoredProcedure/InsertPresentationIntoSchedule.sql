
ALTER PROC insertPresentationIntoSchedule @idPerson INT, @idPresentation INT
  AS
  BEGIN
    BEGIN TRY

      IF NOT EXISTS (SELECT * FROM EventScheduleMapping WHERE idEvent=(SELECT idEvent FROM Event WHERE eventCity=(SELECT location FROM Presentation WHERE idPresentation=@idPresentation)))
        BEGIN

          INSERT INTO Schedule VALUES (
            (SELECT idEvent FROM Event WHERE eventCity=(SELECT location FROM Presentation WHERE idPresentation=@idPresentation)),
            @idPresentation,
              1,
              1);

          INSERT INTO EventScheduleMapping VALUES (
            (SELECT idEvent FROM Event WHERE eventCity=(SELECT location FROM Presentation WHERE idPresentation=@idPresentation)),
            (SELECT TOP 1 eventSchedule FROM Schedule ORDER BY idSchedule DESC)
          );

        END
      ELSE
        BEGIN

          --Here is where we have to pick a time to insert the presentation
          DECLARE @countTimes integer = 1;
          DECLARE @currentEventSchedule integer = (SELECT idSchedule FROM EventScheduleMapping WHERE idEvent = (SELECT idEvent FROM Event WHERE eventCity=(SELECT location FROM Presentation WHERE idPresentation=@idPresentation)));
          DECLARE @inserted bit = 0;

          WHILE @countTimes <= (SELECT COUNT(*) FROM TimeSlot)
          BEGIN

            DECLARE @countRooms integer = 1;

            WHILE @countRooms <= (SELECT COUNT(*) FROM Room)
            BEGIN

              IF NOT EXISTS (SELECT * FROM PersonPresentationTimeMapping WHERE idPerson=@idPerson AND idTimeSlot=@countTimes AND eventSchedule=@currentEventSchedule)
                BEGIN

                  -- If the presenter is free to be schedule at this time.

                  IF NOT EXISTS (SELECT * FROM Schedule WHERE eventSchedule=@currentEventSchedule AND idRoom=@countRooms AND idTimeSlot=@countTimes) AND @inserted = 0
                    BEGIN

                      -- If there are no classes schedule for this time at this events schedule.

                      INSERT INTO Schedule VALUES (@currentEventSchedule, @idPresentation, @countRooms, @countTimes);
                      SET @inserted = 1;

                    END
                END

              SET @countRooms = @countRooms + 1;
            END

            SET @countTimes = @countTimes + 1;

          END

          IF @inserted = 0
            BEGIN

              RAISERROR('ERROR (insertPresentationIntoSchedule): The Presentation was not inserted because there is no remaining room at this event', 1, 1);

            END
        END

    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END