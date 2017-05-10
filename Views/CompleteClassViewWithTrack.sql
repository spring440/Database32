
-- This is a view that contains the first name and last name of the presenter
-- the title and location of the presentation
-- the room number where the presentation is being held and the time
-- And it also contains the track the class is a part of.

ALTER VIEW CompleteClassViewWithTrack
  AS select Person.firstName, Person.lastName, Presentation.title, Presentation.location, Track.trackName, Room.roomNumber, TimeSlot.timeStart
            from (select PresenterPresentationMapping.idPresenter, idTrack, PresentationTrackMapping.idPresentation, idTimeSlot, eventSchedule, idRoom
                  from PresentationTrackMapping
                  inner join PersonPresentationTimeMapping on PersonPresentationTimeMapping.idPresentation = PresentationTrackMapping.idPresentation
                  inner join PresenterPresentationMapping on PresenterPresentationMapping.idPresentation = PersonPresentationTimeMapping.idPresentation) as Target
            inner join Person on Person.idPerson = Target.idPresenter
            inner join Presentation on Presentation.idPresentation = Target.idPresentation
            inner join Track on Track.idTrack = Target.idTrack
            inner join TimeSlot on TimeSlot.idTimeSlot = Target.idTimeSlot
            inner join Room on Room.idRoom = Target.idRoom;