
ALTER PROC insertSponsors
  AS
  BEGIN
    BEGIN TRY

      INSERT INTO Sponsor VALUES (	'VMWare'	,	'Platinum Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Verizon Digital Media Services'	,	'Platinum Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Microsoft Corporation (GAP) (GAP Sponsor)'	,	'Platinum Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Tintri'	,	'Platinum Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Amazon Web Services, LLC'	,	'Gold Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Pyramid Analytics (GAP Sponsor)'	,	'Gold Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Pure Storage'	,	'Gold Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Profisee'	,	'Gold Sponsor'	);
      INSERT INTO Sponsor VALUES (	'NetLib Security'	,	'Silver Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Melissa Data Corp.'	,	'Silver Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Red Gate Software'	,	'Silver Sponsor'	);
      INSERT INTO Sponsor VALUES (	'SentryOne'	,	'Silver Sponsor'	);
      INSERT INTO Sponsor VALUES (	'Hush Hush'	,	'Bronze Sponsor'	);
      INSERT INTO Sponsor VALUES (	'COZYROC'	,	'Bronze Sponsor'	);
      INSERT INTO Sponsor VALUES (	'SQLDocKit by Acceleratio Ltd.'	,	'Bronze Sponsor'	);

    END TRY
    BEGIN CATCH
    END CATCH
  END