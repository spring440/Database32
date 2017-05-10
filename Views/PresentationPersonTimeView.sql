ALTER VIEW PersonPresentationTimeMapping
  AS select Target.idPresentation, Target.idPerson, Schedule.idTimeSlot, Schedule.eventSchedule, Schedule.idRoom
        FROM(select Presentation.idPresentation, Person.idPerson
              FROM PresenterPresentationMapping
              inner join Presentation on PresenterPresentationMapping.idPresentation = Presentation.idPresentation
              inner join Person on PresenterPresentationMapping.idPresenter = Person.idPerson) as Target
          inner join Schedule on Target.idPresentation = Schedule.idPresentation;