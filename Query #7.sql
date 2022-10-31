SELECT
      grupas.FK_ProgKods_ID AS "Specialitātes kods",
      CONCAT(grupas.AudzName," ",grupas.AudzSurname) AS "Audzinātāja",
      audzekni.PerKods_ID AS "Personas kods",
      audzekni.Name AS "Vārds",
      audzekni.Surname AS "Uzvārds",
      audzekni.BirthDate AS "Dzimšanas diena"
FROM grupas
INNER JOIN audzekni
WHERE grupas.GroupName_ID="D4-1";
SELECT
      CONCAT(skolotaji.Name," ",skolotaji.Surname) AS "Skolotājs",
      macibuplani.Semestris AS "Grupa",
      macibuplani.FK_Prieksmeta_ID AS "Priekšmets",
      macibuplani.TeorStunduSk+PrakStunduSk AS "Grupa novadīto stundu skaitlis"
FROM skolotaji
INNER JOIN macibuplani
WHERE macibuplani.Semestris=1 AND macibuplani.FK_Prieksmeta_ID IN(1,2,3,4);
SELECT
      CONCAT(skolotaji.Name," ",skolotaji.Surname) AS "Skolotājs",
      macibuplani.TeorStunduSk+PrakStunduSk AS "Stundu skaits (kopā)"
FROM skolotaji
INNER JOIN macibuplani;
SELECT
      diploma_vertejumi.FK_Prieksmeta_ID AS "Grupa",
		CONCAT(audzekni.Name," ",audzekni.Surname) AS "Audzākņa vārds, uzvārds",
      prieksmeti.PrieksmetaName AS "Priekšmets",
      diploma_vertejumi.Vertejumi AS "Vertejums"
FROM audzekni
INNER JOIN prieksmeti, diploma_vertejumi
WHERE diploma_vertejumi.FK_Prieksmeta_ID=4
HAVING prieksmeti.PrieksmetaName="Sistemu programmesana PB2"
ORDER BY audzekni.Surname;
INSERT INTO grupas(GroupName_ID,AudzName,AudzSurname,FK_ProgKods_ID) VALUES
("DP4-3","Jānis","Bērziņš",33484011),
("DT1-2","Andris","Kalniņš",33483011);
SELECT
      grupas.GroupName_ID,
      specialitates.ProgKods_ID,
      specialitates.ProgName
FROM grupas
LEFT JOIN specialitates
ON grupas.FK_ProgKods_ID=specialitates.ProgKods_ID;
INSERT INTO grupas(GroupName_ID,AudzName,AudzSurname,FK_ProgKods_ID) VALUES
("A3","Juris","Ozoliņš",NULL),
("A4","Edgars","Jansons",NULL);
SELECT
      grupas.GroupName_ID,
      specialitates.ProgKods_ID,
      specialitates.ProgName
FROM grupas
LEFT JOIN specialitates ON grupas.FK_ProgKods_ID=specialitates.ProgKods_ID
WHERE grupas.FK_ProgKods_ID is NULL;
INSERT INTO audzekni(PerKods_ID,Name,Surname,Number,Birthdate,Vecums,FK_GroupName_ID) VALUES
("090602-54127","Māris","Ozols",42135786,'2002-06-09',18,"DP2-1"),
("040603-34129","Pēteris","Balodis",81243567,'2003-06-04',17,"D4-2");
SELECT
      audzekni.FK_GroupName_ID,
      audzekni.PerKods_ID,
      audzekni.Name,
      audzekni.Surname,
      audzekni.Number
FROM audzekni
LEFT JOIN diploma_vertejumi ON audzekni.PerKods_ID=diploma_vertejumi.FK_PerKods_ID  
WHERE diploma_vertejumi.Vertejumi="n/v";
SELECT 
      COUNT(diploma_vertejumi.FK_PerKods_ID) AS "Audzekņa skaits",FK_PerKods_ID
FROM diploma_vertejumi
WHERE diploma_vertejumi.Vertejumi="n/v"
GROUP BY FK_PerKods_ID;
SELECT
      grupas.GroupName_ID AS "Grupas nosaukums",
      specialitates.ProgName AS "Specialitates",
      prieksmeti.TeorStunduSk+prieksmeti.PrakStunduSk AS "Stundu skaits(P+Tr)"
FROM macibuplani
INNER JOIN specialitates,grupas,prieksmeti
WHERE macibuplani.Semestris=1;