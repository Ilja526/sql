SELECT
     COUNT(PerKods_ID) AS "Audzekņa skaitu"
FROM audzekni
WHERE FK_GroupName_ID="D4-1";
SELECT
     COUNT(PerKods_ID) AS "Audzekņa skaitu"
FROM audzekni
WHERE YEAR(BirthDate)=1999 OR YEAR(BirthDate)=2000;
SELECT
     AVG(Vertejumi) AS "Videja atzime"
FROM diploma_vertejumi;
SELECT
     AVG(Vertejumi) AS "Videja atzime",
     MIN(Vertejumi) AS "Minimala atzime",
     MAX(Vertejumi) AS "Maksimala atzime"
FROM diploma_vertejumi; 
WHERE FK_PerKods_ID="010205-22708";