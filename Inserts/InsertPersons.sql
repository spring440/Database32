
ALTER PROCEDURE insertPersons
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO Person VALUES (	'Amanda'	,	'Long'	,	'10 Napa Ct.'	,	'Lebanon'	,	'97355'	,	'Oregon'	,	'ALong@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Christian'	,	'Shan'	,	'1000 Bidweld Street'	,	'Haney'	,	'V2W 1W2'	,	'British Columbia'	,	'CShan@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Troy'	,	'Sara'	,	'1002 N. Spoonwood Court'	,	'Hervey Bay'	,	'4655'	,	'Queensland'	,	'TSara@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Kaitlyn'	,	'Baker'	,	'1003 Matterhorn Ct'	,	'Lebanon'	,	'97355'	,	'Oregon'	,	'KBaker@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Suzanne'	,	'Ma'	,	'1005 Matterhorn Ct.'	,	'Cambridge'	,	'CB4 4BZ'	,	'England'	,	'SMa@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Anna'	,	'Jones'	,	'1005 Matterhorn Ct.'	,	'Mill Valley'	,	'94941'	,	'California'	,	'AJones@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Carlos'	,	'Baker'	,	'1005 Tanager Court'	,	'Corvallis'	,	'97330'	,	'Oregon'	,	'CBaker@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Tanya'	,	'Munoz'	,	'1005 Tanager Court'	,	'Milsons Point'	,	'2061'	,	'New South Wales'	,	'TMunoz@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Tabitha'	,	'Gill'	,	'1006 Deercreek Ln'	,	'Bellflower'	,	'90706'	,	'California'	,	'TGill@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Alexis'	,	'Lee'	,	'1006 Deercreek Ln'	,	'Torrance'	,	'90505'	,	'California'	,	'ALee@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Erick'	,	'Suri'	,	'101 Adobe Dr'	,	'Coffs Harbour'	,	'2450'	,	'New South Wales'	,	'ESuri@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Marcus'	,	'Evans'	,	'101 Adobe Dr'	,	'Puyallup'	,	'98371'	,	'Washington'	,	'MEvans@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Marcus'	,	'Clark'	,	'101, avenue de la Gare'	,	'Peterborough'	,	'PB12'	,	'England'	,	'MClark@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Gilbert'	,	'Xu'	,	'1010 Maple'	,	'Baltimore'	,	'21201'	,	'Maryland'	,	'GXu@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Paula'	,	'Rubio'	,	'1011 Yolanda Circle'	,	'Berkeley'	,	'94704'	,	'California'	,	'PRubio@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Julian'	,	'Isla'	,	'1011 Yolanda Circle'	,	'N. Vancouver'	,	'V7L 4J4'	,	'British Columbia'	,	'JIsla@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Jesse'	,	'Scott'	,	'1013 Holiday Hills Dr.'	,	'Bremerton'	,	'98312'	,	'Washington'	,	'JScott@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Naomi'	,	'Sanz'	,	'1013 Holiday Hills Dr.'	,	'Gateshead'	,	'GA10'	,	'England'	,	'NSanz@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Isabella'	,	'Lee'	,	'1015 Lynwood Drive'	,	'Metchosin'	,	'V9'	,	'British Columbia'	,	'ILee@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Dawn'	,	'Yuan'	,	'1019 Carletto Drive'	,	'Berkeley'	,	'94704'	,	'California'	,	'DYuan@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Olivia'	,	'Blue'	,	'1019 Mt. Davidson Court'	,	'Burien'	,	'98168'	,	'Washington'	,	'OBlue@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Emmanuel'	,	'Lopez'	,	'1019 Mt. Davidson Court'	,	'London'	,	'SW8 4BG'	,	'England'	,	'ELopez@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Nathan'	,	'Yang'	,	'102 Vista Place'	,	'Santa Monica'	,	'90401'	,	'California'	,	'NYang@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Gabrielle'	,	'Wood'	,	'1020 Book Road'	,	'Bremerton'	,	'98312'	,	'Washington'	,	'GWood@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Katrina'	,	'Anand'	,	'1020 Carletto Drive'	,	'Matraville'	,	'2036'	,	'New South Wales'	,	'KAnand@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Anthony'	,	'Jones'	,	'1020 Carletto Drive'	,	'Santa Cruz'	,	'95062'	,	'California'	,	'AJones@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Natalie'	,	'Reed'	,	'1023 Hawkins Street'	,	'Lebanon'	,	'97355'	,	'Oregon'	,	'NReed@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Dakota'	,	'Ross'	,	'1024 Walnut Blvd.'	,	'Colma'	,	'94014'	,	'California'	,	'DRoss@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Shawn'	,	'Goel'	,	'1025 Holly Oak Drive'	,	'Leeds'	,	'LE18'	,	'England'	,	'SGoel@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Nicole'	,	'Diaz'	,	'1025 R St.'	,	'Kirkland'	,	'98033'	,	'Washington'	,	'NDiaz@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Wyatt'	,	'Davis'	,	'1025 Yosemite Dr.'	,	'Oregon City'	,	'97045'	,	'Oregon'	,	'WDavis@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Christy'	,	'Huang'	,	'1028 Green View Court'	,	'Chula Vista'	,	'91910'	,	'California'	,	'CHuang@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Sydney'	,	'Evans'	,	'1028 Green View Court'	,	'Oregon City'	,	'97045'	,	'Oregon'	,	'SEvans@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Katherine'	,	'Baker'	,	'1037 Hayes Court'	,	'Stoke-on-Trent'	,	'AS23'	,	'England'	,	'KBaker@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Edward'	,	'Wood'	,	'1039 Adelaide St.'	,	'West Covina'	,	'91791'	,	'California'	,	'EWood@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Johnny'	,	'Rai'	,	'104 Hilltop Dr.'	,	'Springwood'	,	'2777'	,	'New South Wales'	,	'JRai@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Emily'	,	'Moore'	,	'104 Kaski Ln.'	,	'Portland'	,	'97205'	,	'Oregon'	,	'EMoore@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Randy'	,	'Yang'	,	'1040 Greenbush Drive'	,	'Silverwater'	,	'2264'	,	'New South Wales'	,	'RYang@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Roy'	,	'Ruiz'	,	'1040 Northridge Road'	,	'London'	,	'W1X3SE'	,	'England'	,	'RRuiz@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Marshall'	,	'Sun'	,	'1044 San Carlos'	,	'Cincinnati'	,	'45202'	,	'Ohio'	,	'MSun@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Gabriella'	,	'Perez'	,	'1045 Lolita Drive'	,	'Torrance'	,	'90505'	,	'California'	,	'GPerez@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Erika'	,	'Gill'	,	'1045 Lolita Drive'	,	'Townsville'	,	'4810'	,	'Queensland'	,	'EGill@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Kathryn'	,	'Shen'	,	'1047 Las Quebradas Lane'	,	'North Sydney'	,	'2055'	,	'New South Wales'	,	'KShen@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Sharon'	,	'Yuan'	,	'1048 Burwood Way'	,	'Hervey Bay'	,	'4655'	,	'Queensland'	,	'SYuan@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Victoria'	,	'Lee'	,	'1048 Las Quebradas Lane'	,	'Walla Walla'	,	'99362'	,	'Washington'	,	'VLee@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Brenda'	,	'Arun'	,	'1048 Las Quebradas Lane'	,	'Wollongong'	,	'2500'	,	'New South Wales'	,	'BArun@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Alex'	,	'Scott'	,	'105 Clark Creek Lane'	,	'Port Macquarie'	,	'2444'	,	'New South Wales'	,	'AScott@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Yolanda'	,	'Luo'	,	'105 Woodruff Ln.'	,	'Bellingham'	,	'98225'	,	'Washington'	,	'YLuo@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Martin'	,	'Vance'	,	'1050 Creed Ave'	,	'London'	,	'W10 6BL'	,	'England'	,	'MVance@gmail.com'	)	;
      INSERT INTO Person VALUES (	'Jeremy'	,	'Roberts'	,	'081, boulevard du Montparnasse'	,	'Seattle'	,	'98104'	,	'Washington'	,	'JRoberts@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Amanda'	,	'Ramirez'	,	'1 Smiling Tree Court'	,	'Los Angeles'	,	'90012'	,	'California'	,	'ARamirez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Jada'	,	'Nelson'	,	'100, rue des Rosiers'	,	'Everett'	,	'98201'	,	'Washington'	,	'JNelson@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Hunter'	,	'Wright'	,	'1002 N. Spoonwood Court'	,	'Berkeley'	,	'94704'	,	'California'	,	'HWright@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Sierra'	,	'Wright'	,	'1005 Fremont Street'	,	'Colma'	,	'94014'	,	'California'	,	'SWright@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Sarah'	,	'Simmons'	,	'1005 Valley Oak Plaza'	,	'Langley'	,	'V3A 4R2'	,	'British Columbia'	,	'SSimmons@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Mandar'	,	'Samant'	,	'1005 Valley Oak Plaza'	,	'London'	,	'SW6 SBY'	,	'England'	,	'MSamant@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Isaiah'	,	'Rogers'	,	'1007 Cardinet Dr.'	,	'El Cajon'	,	'92020'	,	'California'	,	'IRogers@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Ian'	,	'Foster'	,	'1008 Lydia Lane'	,	'Burbank'	,	'91502'	,	'California'	,	'IFoster@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Ben'	,	'Miller'	,	'101 Candy Rd.'	,	'Redmond'	,	'98052'	,	'Washington'	,	'BMiller@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Sarah'	,	'Barnes'	,	'1011 Green St.'	,	'Bellingham'	,	'98225'	,	'Washington'	,	'SBarnes@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Casey'	,	'Martin'	,	'1013 Buchanan Rd'	,	'Port Macquarie'	,	'2444'	,	'New South Wales'	,	'CMartin@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Victoria'	,	'Murphy'	,	'1013 Buchanan Rd'	,	'Yakima'	,	'98901'	,	'Washington'	,	'VMurphy@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Sydney'	,	'Rogers'	,	'1016 Park Avenue'	,	'Burbank'	,	'91502'	,	'California'	,	'SRogers@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Marvin'	,	'Hernandez'	,	'1019 Book Road'	,	'Rhodes'	,	'2138'	,	'New South Wales'	,	'MHernandez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Carlos'	,	'Carter'	,	'1019 Buchanan Road'	,	'Woodland Hills'	,	'91364'	,	'California'	,	'CCarter@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Rebekah'	,	'Garcia'	,	'1019 Candy Rd.'	,	'Coffs Harbour'	,	'2450'	,	'New South Wales'	,	'RGarcia@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Haley'	,	'Henderson'	,	'1019 Chance Drive'	,	'Sedro Woolley'	,	'98284'	,	'Washington'	,	'HHenderson@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Jacob'	,	'Taylor'	,	'1019 Kenwal Rd.'	,	'Lake Oswego'	,	'97034'	,	'Oregon'	,	'JTaylor@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Seth'	,	'Martin'	,	'1019 Pennsylvania Blvd'	,	'Marysville'	,	'98270'	,	'Washington'	,	'SMartin@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Larry'	,	'Suarez'	,	'102 Vista Place'	,	'Milton Keynes'	,	'MK8 8DF'	,	'England'	,	'LSuarez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Garrett'	,	'Vargas'	,	'10203 Acorn Avenue'	,	'Calgary'	,	'T2P 2G8'	,	'Alberta'	,	'GVargas@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Abby'	,	'Martinez'	,	'1023 Hawkins Street'	,	'Townsville'	,	'4810'	,	'Queensland'	,	'AMartinez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Justin'	,	'Thomas'	,	'1023 Riveria Way'	,	'Burbank'	,	'91502'	,	'California'	,	'JThomas@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Evelyn'	,	'Martinez'	,	'1023 Riviera Way'	,	'Oxford'	,	'OX1'	,	'England'	,	'EMartinez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Pamela'	,	'Chapman'	,	'1025 Yosemite Dr.'	,	'Townsville'	,	'4810'	,	'Queensland'	,	'PChapman@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Kayla'	,	'Griffin'	,	'1026 Mt. Wilson Pl.'	,	'Lynnwood'	,	'98036'	,	'Washington'	,	'KGriffin@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Jill'	,	'Navarro'	,	'1026 Mt. Wilson Pl.'	,	'South Melbourne'	,	'3205'	,	'Victoria'	,	'JNavarro@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Nathan'	,	'Walker'	,	'1028 Indigo Ct.'	,	'Issaquah'	,	'98027'	,	'Washington'	,	'NWalker@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Tabitha'	,	'Moreno'	,	'1028 Indigo Ct.'	,	'Warrnambool'	,	'3280'	,	'Victoria'	,	'TMoreno@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Mason'	,	'Sanchez'	,	'1028 Royal Oak Rd.'	,	'Burlingame'	,	'94010'	,	'California'	,	'MSanchez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Natasha'	,	'Navarro'	,	'1029 Birchwood Dr'	,	'Burien'	,	'98168'	,	'Washington'	,	'NNavarro@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Kevin'	,	'Russell'	,	'1029 Birchwood Dr'	,	'Olympia'	,	'98501'	,	'Washington'	,	'KRussell@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Katelyn'	,	'Rivera'	,	'1030 Ambush Dr.'	,	'Bury'	,	'PE17'	,	'England'	,	'KRivera@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Alfredo'	,	'Ortega'	,	'1032 Buena Vista'	,	'North Ryde'	,	'2113'	,	'New South Wales'	,	'AOrtega@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Andrea'	,	'Campbell'	,	'1032 Coats Road'	,	'Stoke-on-Trent'	,	'AS23'	,	'England'	,	'ACampbell@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Jeremy'	,	'Peterson'	,	'1035 Arguello Blvd.'	,	'San Diego'	,	'92102'	,	'California'	,	'JPeterson@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Arianna'	,	'Ramirez'	,	'1036 Mason Dr'	,	'Port Orchard'	,	'98366'	,	'Washington'	,	'ARamirez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Mario'	,	'Sharma'	,	'1039 Adelaide St.'	,	'Port Macquarie'	,	'2444'	,	'New South Wales'	,	'MSharma@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Adam'	,	'Collins'	,	'104 Hilltop Dr.'	,	'Concord'	,	'94519'	,	'California'	,	'ACollins@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Taylor'	,	'Martin'	,	'1040 Greenbush Drive'	,	'Newton'	,	'V2L3W8'	,	'British Columbia'	,	'TMartin@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Gabriel'	,	'Collins'	,	'1040 Northridge Road'	,	'Woodland Hills'	,	'91364'	,	'California'	,	'GCollins@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Randall'	,	'Martin'	,	'1042 Hooftrail Way'	,	'Newcastle'	,	'2300'	,	'New South Wales'	,	'RMartin@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Samantha'	,	'Jenkins'	,	'1046 Cloverleaf Circle'	,	'Shawnee'	,	'V8Z 4N5'	,	'British Columbia'	,	'SJenkins@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Justin'	,	'Simmons'	,	'1046 San Carlos Avenue'	,	'Colma'	,	'94014'	,	'California'	,	'JSimmons@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Ethan'	,	'Winston'	,	'1047 Las Quebradas Lane'	,	'Oak Bay'	,	'V8P'	,	'British Columbia'	,	'EWinston@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Hunter'	,	'Roberts'	,	'1048 Burwood Way'	,	'Haney'	,	'V2W 1W2'	,	'British Columbia'	,	'HRoberts@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Nathaniel'	,	'Murphy'	,	'105 Woodruff Ln.'	,	'Oakland'	,	'94611'	,	'California'	,	'NMurphy@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Charles'	,	'Wilson'	,	'1050 Creed Ave'	,	'Lebanon'	,	'97355'	,	'Oregon'	,	'CWilson@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Carrie'	,	'Alvarez'	,	'1050 Greenhills Circle'	,	'Lane Cove'	,	'1597'	,	'New South Wales'	,	'CAlvarez@yahoo.com'	)	;
      INSERT INTO Person VALUES (	'Paige'	,	'Alexander'	,	'1050 Greenhills Circle'	,	'Langley'	,	'V3A 4R2'	,	'British Columbia'	,	'PAlexander@yahoo.com'	)	;

      INSERT INTO PersonRolesMapping (idPerson, idRole) SELECT idPerson, (SELECT idRole FROM Roles WHERE title='Attendee') FROM Person;

    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
END