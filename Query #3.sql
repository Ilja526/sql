SELECT
      PerKods_ID,
      Name,
      Surname
FROM audzekni
WHERE Name LIKE'R%';
SELECT
      Name,
      Surname,
      Number
FROM audzekni
WHERE Surname LIKE'%is';
SELECT
      Name,
      Surname,
      DarbaStaze
FROM skolotaji
WHERE Surname LIKE'M%d%is';
SELECT
      Name,
      Surname,
      Number
FROM skolotaji
WHERE Surname NOT LIKE 'B%' AND Surname NOT LIKE'%b%' AND Surname NOT LIKE'%b';
INSERT INTO audzekni VALUES("050407-85642","Ilja","Ivaņenkovs",74893269,NULL,17,"D4-1");
SELECT
     PerKods_ID,
     Name,
     Surname,
     Number,
     BirthDate,
     Vecums,
     FK_GroupName_ID
FROM audzekni
WHERE BirthDate IS NULL;