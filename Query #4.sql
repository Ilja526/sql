SELECT
     LEFT(PerKods_ID, 7) AS "Personas  koda pirmā dāļa",
     CONCAT(Surname, " ",Name) AS "Audzēkņa uzvārds vārds"
FROM audzekni;
SELECT
     Name,
     Surname,
     BirthDate,
     CURDATE() AS "Šodienas datums",
     DATEDIFF(CURDATE(),BirthDate) AS "Datediff"
FROM audzekni;
SELECT
     Name,
     Surname,
     DATE_FORMAT(CURDATE(),"%y") AS "Gads"
FROM skolotaji;