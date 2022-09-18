SELECT
      Name,
      Surname,
      BirthDate
FROM audzekni;
SELECT 
      Surname,
      Name,
      DarbaStaze
FROM skolotaji;
SELECT
      DiplomaVertejumi_ID,
      Vertejumi,
      FK_PerKods_ID,
      FK_Prieksmeta_ID
FROM diploma_vertejumi
LIMIT 10;
SELECT
      Name,
      Surname,
      Number,
      DarbaStaze
FROM skolotaji
WHERE DarbaStaze>20;
SELECT
      PerKods_ID,
      FK_GroupName_ID,
      Surname,
      Name
FROM audzekni
WHERE FK_GroupName_ID="D4-1";
SELECT
      Name,
      Surname,
      Number,
      FK_Komisija_ID
FROM skolotaji
WHERE FK_Komisija_ID="1";
SELECT
     PerKods_ID,
     Name,
     Surname,
     Year(BirthDate) AS "Dzim_gads",
     MONTH(BirthDate) AS "Dzim_menesis",
     DAY(BirthDate) AS "Dzim_diena"
FROM audzekni
ORDER BY Dzim_gads ASC;
SELECT
     Year(BirthDate) AS "Dzim_gads",
     FK_GroupName_ID
FROM audzekni
WHERE 
      FK_GroupName_ID="D4-2" 
		         AND
		Year(BirthDate)="2003";
SELECT
      PrieksmetaName,
      TeorStunduSk+PrakStunduSk
FROM prieksmeti;
SELECT
      MacibuPlani_ID,
      Semestris,
      TeorStunduSk+PrakStunduSk,
      FK_Skolotaji_ID,
      FK_GroupName_ID,
      FK_Prieksmeta_ID
FROM macibuplani
WHERE FK_GroupName_ID="D4-1";
SELECT
      Vertejumi
FROM diploma_vertejumi
WHERE Vertejumi<4;
SELECT
      Vertejumi,
      FK_PerKods_ID
FROM diploma_vertejumi
WHERE Vertejumi<4;