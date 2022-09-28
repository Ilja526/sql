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
INSERT INTO audzekni VALUES("050707-85642","Ilja","Ivaņenkovs",74893269,NULL,17,"D4-1");
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
SELECT
      BirthDate
FROM audzekni
WHERE BirthDate IN('2004-12-31','2004-12-28','2000-12-12','2022-09-13');
SELECT *
FROM audzekni
WHERE
      MONTH(BirthDate)>"5"
         AND
      MONTH(BirthDate)<"9";
SELECT *
FROM audzekni
WHERE MONTH(BirthDate) BETWEEN 1 AND 7;
SELECT *
FROM audzekni
WHERE DAY(BirthDate) BETWEEN 11 AND 31;
SELECT *
FROM audzekni
WHERE NOT(DAY(BirthDate) IN(17,25) OR MONTH(BirthDate) IN(7,8,9))