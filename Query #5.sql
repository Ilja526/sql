SELECT
		COUNT(FK_GroupName_ID) AS GroupName_ID
FROM audzekni
WHERE FK_GroupName_ID="D4-1";
SELECT
      COUNT(BirthDate) AS Dzimšanas_diena
FROM audzekni
WHERE YEAR(BirthDate)=1999 OR YEAR(BirthDate)=2000;
SELECT
      AVG(Vertejumi) AS Vidējā_vertejumi
FROM diploma_vertejumi;
SELECT
      AVG(Vertejumi) AS Vidējā_vertejumi,
      MIN(Vertejumi) AS Minimālā_vertejumi,
      MAX(Vertejumi) AS Maksimālā_vertejumi
FROM diploma_vertejumi
WHERE FK_PerKods_ID="010205-22708";
SELECT
      COUNT(Vertejumi) AS Vertejumi_skaitlis
FROM diploma_vertejumi
WHERE Vertejumi<4;
INSERT INTO diploma_vertejumi VALUES(28,NULL,"010205-22708",3);
SELECT
      AVG(Vertejumi) AS Vidējā_vertejumi,
      MIN(Vertejumi) AS Minimālā_vertejumi,
      MAX(Vertejumi) AS Maksimālā_vertejumi
FROM diploma_vertejumi;