
ALTER VIEW CompleteClassView
  AS select distinct Event.eventName, Person.firstName, Person.lastName, Presentation.title, Presentation.location, Room.roomNumber, TimeSlot.timeStart
    FROM PersonPresentationTimeMapping
    inner join Person on Person.idPerson=PersonPresentationTimeMapping.idPerson
    inner join Presentation on Presentation.idPresentation=PersonPresentationTimeMapping.idPresentation
    inner join TimeSlot on TimeSlot.idTimeSlot=PersonPresentationTimeMapping.idTimeSlot
    inner join Room on Room.idRoom=PersonPresentationTimeMapping.idRoom
    inner join Event on Event.idEvent=PersonPresentationTimeMapping.eventSchedule;