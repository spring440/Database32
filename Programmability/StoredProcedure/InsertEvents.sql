
ALTER PROC insertEvents
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO Event VALUES (	'6-May-17'	,	'SQLSaturday #626 - Budapest 2017'	,	'Budapest'	,	'Europe/Middle East/Africa'	);
      INSERT INTO Event VALUES (	'6-May-17'	,	'SQLSaturday #615 - Baltimore 2017'	,	'Baltimore'	,	'Canada/US'	);
      INSERT INTO Event VALUES (	'13-May-17'	,	'SQLSaturday #608 - Bogota 2017'	,	'Bogota'	,	'Latin America'	);
      INSERT INTO Event VALUES (	'20-May-17'	,	'SQLSaturday #616 - Kyiv 2017'	,	'Kiyv'	,	'Europe/Middle East/Africa'	);
      INSERT INTO Event VALUES (	'20-May-17'	,	'SQLSaturday #588 - New York City 2017'	,	'New York'	,	'Canada/US'	);
      INSERT INTO Event VALUES (	'27-May-17'	,	'SQLSaturday #630 - Brisbane 2017'	,	'Brisbane'	,	'Asia Pacific'	);
      INSERT INTO Event VALUES (	'27-May-17'	,	'SQLSaturday #599 - Plovdiv 2017'	,	'Plovdiv'	,	'Europe/Middle East/Africa'	);
      INSERT INTO Event VALUES (	'3-Jun-17'	,	'SQLSaturday #638 - Philadelphia 2017'	,	'Philadelphia'	,	'Canada/US'	);
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END