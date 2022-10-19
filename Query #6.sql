SELECT
      COUNT(PerKods_ID) AS "Audzēkņu skaitu",FK_GroupName_ID
FROM audzekni
GROUP BY FK_GroupName_ID;
SELECT
      COUNT(PerKods_ID) AS "Audzēkņu skaitu",
		YEAR(BirthDate) AS "Gads"
FROM audzekni
GROUP BY Gads;
SELECT
      COUNT(PerKods_ID) AS "Audzēkņu skaitu",FK_GroupName_ID
FROM audzekni
WHERE Name LIKE "R%"
GROUP BY FK_GroupName_ID;
SELECT
      COUNT(PerKods_ID) AS "Audzēkņu skaitu",FK_GroupName_ID
FROM audzekni
WHERE Vecums>17
GROUP BY FK_GroupName_ID;
SELECT
     AVG(Vertejumi) AS "Vidējo vērtējumu audzekni",FK_Prieksmeta_ID
FROM diploma_vertejumi
GROUP BY FK_Prieksmeta_ID;
SELECT
     COUNT(Vertejumi) AS "Vērtējumu audzekni",FK_PerKods_ID
FROM diploma_vertejumi
WHERE Vertejumi<4
GROUP BY FK_PerKods_ID;
SELECT
     COUNT(Vertejumi) AS "Audzēkņu skaitu",FK_Prieksmeta_ID
FROM diploma_vertejumi
WHERE Vertejumi<4 | "n/v"
GROUP BY FK_Prieksmeta_ID
HAVING COUNT(Vertejumi)>2;