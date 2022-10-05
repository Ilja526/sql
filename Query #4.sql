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
SELECT
     Name,
     Surname,
     YEAR(CURDATE())-DarbaStaze AS "Gads, kurā viņi sāka strādāt tehnikuma"
FROM skolotaji;
SELECT
     Name,
     Surname,
     BirthDate,
DATE_FORMAT((BirthDate), "%d/%m/%Y") AS "DateFormat1",
DATE_FORMAT((BirthDate), "%M %d, %y") AS "DateFormat2",
DATE_FORMAT((BirthDate), "%d %b, %W") AS "DateFormat3"
FROM audzekni;
