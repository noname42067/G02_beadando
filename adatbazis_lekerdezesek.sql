CREATE TABLE Csapatok(
 id int PRIMARY KEY,
 csapat_nev varchar(100) NOT NULL,
 alapitas_ev int NULL,
 varos varchar(100) NOT NULL,
 edzo_nev varchar(100) NOT NULL
);
CREATE TABLE Stadion
(
  id INT PRIMARY KEY,
  nev varchar(100) NOT NULL,
  helyszin varchar(500) NOT NULL,
  ferohely INT NULL
);


CREATE TABLE Jatekosok
(id INT PRIMARY KEY,
nev varchar(100) NOT NULL,
csapat_id INT NOT NULL,
szuletesi_ev int NULL,
pozicio varchar(100) NULL,
 FOREIGN KEY (csapat_id) REFERENCES Csapatok(id)
);
CREATE TABLE Merkozesek(
 id int PRIMARY KEY,
 csapat_1_id int NOT NULL,
  csapat_2_id int NOT NULL,
  stadion_id int NOT NULL,
  datum DATE NOT NULL,
  FOREIGN KEY (csapat_1_id) REFERENCES Csapatok(id),
  FOREIGN KEY (csapat_2_id) REFERENCES Csapatok(id),
  FOREIGN KEY (stadion_id) REFERENCES Stadion(id)
  );
  CREATE TABLE Golok
(
  id INT PRIMARY KEY,
  merkozes_id INT NOT NULL,
  csapat_id INT NOT NULL,
  jatekos_id INT NOT NULL,
  tipus varchar(100) NULL,
  golok_szama INT NULL,
  FOREIGN KEY (merkozes_id) REFERENCES Merkozesek(id),
  FOREIGN KEY (csapat_id) REFERENCES Csapatok(id),
  FOREIGN KEY (jatekos_id) REFERENCES Jatekosok(id)
);
INSERT INTO Stadion(id, nev, helyszin, ferohely) VALUES
(1, 'Puskás Aréna', 'Budapest', 67215),
(2, 'Nagyerdei Stadion', 'Debrecen', 20340),
(3, 'Groupama Aréna', 'Budapest', 22000),
(4, 'Diósgyőri Stadion', 'Miskolc', 15000),
(5, 'Haladás Stadion', 'Szombathely', 8500),
(6, 'Pancho Aréna', 'Felcsút', 3800),
(7, 'Sóstói Stadion', 'Székesfehérvár', 14000),
(8, 'Bozsik Aréna', 'Kispest', 8500),
(9, 'Új Hidegkuti Nándor Stadion', 'Budapest', 5000),
(10, 'Városi Stadion', 'Zalaegerszeg', 11000);

INSERT INTO Csapatok(id, csapat_nev, alapitas_ev, varos, edzo_nev) VALUES
(1, 'Budapesti Sólymok', 1901, 'Budapest', 'Kovács István'),
(2, 'Debreceni Villámok', 1920, 'Debrecen', 'Nagy László'),
(3, 'Győri Sasok', 1955, 'Győr', 'Szabó Tamás'),
(4, 'Szegedi Tornádók', 1978, 'Szeged', 'Kiss Zoltán'),
(5, 'Pécsi Farkasok', 1933, 'Pécs', 'Tóth Attila'),
(6, 'Miskolci Oroszlánok', 1944, 'Miskolc', 'Molnár Zsolt'),
(7, 'Szombathelyi Villámok', 1960, 'Szombathely', 'Oláh András'),
(8, 'Kispesti Lovagok', 1921, 'Budapest', 'Varga Gábor'),
(9, 'ZTE Harcosok', 1970, 'Zalaegerszeg', 'Farkas Balázs'),
(10, 'Fehérvári Sólymok', 1985, 'Székesfehérvár', 'Jakab László');

 

INSERT INTO Jatekosok(id, nev, csapat_id, szuletesi_ev, pozicio) VALUES
 (1, 'Németh Dániel', 1, 1995, 'kapus'),
(2, 'Kiss Péter', 1, 1998, 'belső védő'),
(3, 'Simon Gergő', 1, 1994, 'belső védő'),
(4, 'Nagy Kristóf', 1, 1996, 'balhátvéd'),
(5, 'Fodor Ádám', 1, 1999, 'jobbhátvéd'),
(6, 'Bíró Máté', 1, 1993, 'védekező középpályás'),
(7, 'Oláh Norbert', 1, 1997, 'középpályás'),
(8, 'Varga Bence', 1, 1996, 'támadó középpályás'),
(9, 'Tóth Levente', 1, 1995, 'bal szélső'),
(10, 'Pál Márk', 1, 1994, 'jobb szélső'),
(11, 'Szabó Dániel', 1, 1993, 'csatár'),

(12, 'Szabó Márton', 2, 1996, 'kapus'),
(13, 'Tóth Gábor', 2, 1992, 'belső védő'),
(14, 'Barna Zsolt', 2, 1997, 'belső védő'),
(15, 'Takács Norbert', 2, 1995, 'balhátvéd'),
(16, 'Vass Márk', 2, 1996, 'jobbhátvéd'),
(17, 'Gulyás Tamás', 2, 1994, 'védekező középpályás'),
(18, 'Antal Levente', 2, 1998, 'középpályás'),
(19, 'Hajdú Zsolt', 2, 1997, 'támadó középpályás'),
(20, 'Kiss Imre', 2, 1995, 'bal szélső'),
(21, 'Varga Ádám', 2, 1993, 'jobb szélső'),
(22, 'Molnár András', 2, 1992, 'csatár'),

(23, 'Varga László', 3, 1993, 'kapus'),
(24, 'Horváth Bence', 3, 1997, 'belső védő'),
(25, 'Szalai Máté', 3, 1990, 'belső védő'),
(26, 'Lukács Dániel', 3, 1992, 'balhátvéd'),
(27, 'Kelemen Zsolt', 3, 1995, 'jobbhátvéd'),
(28, 'Fehér László', 3, 1997, 'védekező középpályás'),
(29, 'Pál Gergely', 3, 1993, 'középpályás'),
(30, 'Szűcs Krisztián', 3, 1994, 'támadó középpályás'),
(31, 'Jakab Roland', 3, 1995, 'bal szélső'),
(32, 'Balogh Zoltán', 3, 1996, 'jobb szélső'),
(33, 'Kovács Patrik', 3, 1992, 'csatár'),
 
 (34, 'Fekete Zsolt', 4, 1994, 'kapus'),
(35, 'Kovács Levente', 4, 1991, 'belső védő'),
(36, 'Török Patrik', 4, 1991, 'belső védő'),
(37, 'Szűcs Balázs', 4, 1994, 'balhátvéd'),
(38, 'Kiss Norbert', 4, 1998, 'jobbhátvéd'),
(39, 'Papp Dániel', 4, 1996, 'védekező középpályás'),
(40, 'Bognár Ákos', 4, 1995, 'középpályás'),
(41, 'Vincze Dávid', 4, 1993, 'támadó középpályás'),
(42, 'Németh Róbert', 4, 1997, 'bal szélső'),
(43, 'Kerekes István', 4, 1992, 'jobb szélső'),
(44, 'Fodor Péter', 4, 1994, 'csatár'),
 
 (45, 'Lakatos Dávid', 5, 1990, 'kapus'),
(46, 'Pintér András', 5, 1999, 'belső védő'),
(47, 'Kovács Róbert', 5, 1992, 'belső védő'),
(48, 'Horváth Ákos', 5, 1997, 'balhátvéd'),
(49, 'Szabó Bence', 5, 1995, 'jobbhátvéd'),
(50, 'Molnár Dániel', 5, 1993, 'védekező középpályás'),
(51, 'Sárközi Gábor', 5, 1994, 'középpályás'),
(52, 'Boros Máté', 5, 1996, 'támadó középpályás'),
(53, 'Nagy Balázs', 5, 1995, 'bal szélső'),
(54, 'Fekete Levente', 5, 1993, 'jobb szélső'),
(55, 'Kiss Dániel', 5, 1992, 'csatár'),

(56, 'Molnár Krisztián', 6, 1998, 'kapus'),
(57, 'Oláh Zoltán', 6, 1991, 'belső védő'),
(58, 'Major Gergely', 6, 1996, 'belső védő'),
(59, 'Vincze Krisztián', 6, 1994, 'balhátvéd'),
(60, 'Németh Balázs', 6, 1990, 'jobbhátvéd'),
(61, 'Szilágyi István', 6, 1995, 'védekező középpályás'),
(62, 'Kiss Róbert', 6, 1992, 'középpályás'),
(63, 'Sándor Gábor', 6, 1997, 'támadó középpályás'),
(64, 'Kovács Milán', 6, 1993, 'bal szélső'),
(65, 'Varga Tamás', 6, 1996, 'jobb szélső'),
(66, 'Tóth Zsolt', 6, 1994, 'csatár'),

 (67, 'Balogh Máté', 7, 2000, 'kapus'),
(68, 'Pap Milán', 7, 1993, 'belső védő'),
(69, 'Simon László', 7, 1996, 'belső védő'),
(70, 'Takács Richárd', 7, 1991, 'balhátvéd'),
(71, 'Szabados Bálint', 7, 1998, 'jobbhátvéd'),
(72, 'Juhász Márk', 7, 1992, 'védekező középpályás'),
(73, 'Farkas Kristóf', 7, 1995, 'középpályás'),
(74, 'Illés Gábor', 7, 1996, 'támadó középpályás'),
(75, 'Sipos Tamás', 7, 1994, 'bal szélső'),
(76, 'Oláh Márton', 7, 1991, 'jobb szélső'),
(77, 'Szűcs Norbert', 7, 1993, 'csatár'),
 
 (78, 'Jakab Roland', 8, 1995, 'kapus'),
(79, 'Major Zsolt', 8, 1993, 'belső védő'),
(80, 'Katona Máté', 8, 1995, 'belső védő'),
(81, 'Pintér Balázs', 8, 1996, 'balhátvéd'),
(82, 'László Tamás', 8, 1992, 'jobbhátvéd'),
(83, 'Kerekes László', 8, 1994, 'védekező középpályás'),
(84, 'Hegedűs Bence', 8, 1997, 'középpályás'),
(85, 'Sipos Ádám', 8, 1991, 'támadó középpályás'),
(86, 'Kocsis Norbert', 8, 1990, 'bal szélső'),
(87, 'Fülöp Gergely', 8, 1998, 'jobb szélső'),
(88, 'Kovács Vince',8,1996,'csatár'), 
 (89, 'Takács Ádám', 9, 1993, 'kapus'),
(90, 'Bognár Tamás', 9, 1994, 'belső védő'),
(91, 'Hajdu Márk', 9, 1996, 'belső védő'),
(92, 'Tóth Norbert', 9, 1995, 'balhátvéd'),
(93, 'Mészáros Dániel', 9, 1997, 'jobbhátvéd'),
(94, 'Illés Balázs', 9, 1993, 'védekező középpályás'),
(95, 'Papp Kristóf', 9, 1991, 'középpályás'),
(96, 'Oláh Ákos', 9, 1990, 'támadó középpályás'),
(97, 'Kovács Bence', 9, 1999, 'bal szélső'),
(98, 'Kis Patrik', 9, 1998, 'jobb szélső'),
(99, 'Veres Gábor', 9, 1995, 'csatár'),
 (100, 'Kelemen István', 10, 1992, 'kapus'),
(101, 'Mihály Ádám', 10, 1996, 'belső védő'),
(102, 'Somogyi László', 10, 1993, 'belső védő'),
(103, 'Tamás Zoltán', 10, 1997, 'balhátvéd'),
(104, 'Jakus Norbert', 10, 1995, 'jobbhátvéd'),
(105, 'Fekete Dávid', 10, 1992, 'védekező középpályás'),
(106, 'Vajda Máté', 10, 1994, 'középpályás'),
(107, 'Barta Roland', 10, 1991, 'támadó középpályás'),
(108, 'Szilágyi Gergő', 10, 1998, 'bal szélső'),
(109, 'Fazekas Levente', 10, 1999, 'jobb szélső'),
(110, 'Szűcs Gábor', 10, 1990, 'csatár');
  
INSERT INTO Merkozesek(id, csapat_1_id, csapat_2_id, stadion_id, datum) VALUES
(1, 1, 2, 1, '2024-04-10'),
(2, 3, 4, 2, '2024-04-11'),
(3, 5, 6, 3, '2024-04-12'),
(4, 7, 8, 4, '2024-04-13'),
(5, 9, 10, 5, '2024-04-14'),
(6, 2, 3, 1, '2024-05-01'),
(7, 4, 5, 6, '2024-05-02'),
(8, 6, 7, 7, '2024-05-03'),
(9, 8, 9, 8, '2024-05-04'),
(10, 10, 1, 9, '2024-05-05'),
(11, 1, 3, 8, '2024-05-10'),
(12, 2, 4, 4, '2024-05-11'),
(13, 5, 7, 6, '2024-05-12'),
(14, 6, 9, 7, '2024-05-13'),
(15, 8, 10, 5, '2024-05-14');

INSERT INTO Golok(id, merkozes_id, csapat_id, jatekos_id, tipus, golok_szama) VALUES
(1, 1, 1, 2, 'fejes', 1),
(2, 1, 2, 3, 'büntető', 1),
(3, 2, 3, 5, 'lövés', 2),
(4, 2, 4, 7, 'szabadrúgás', 1),
(5, 3, 5, 9, 'büntető', 1),
(6, 3, 6, 11, 'lövés', 1),
(7, 4, 7, 12, 'fejes', 2),
(8, 4, 8, 13, 'szöglet', 1),
(9, 5, 9, 14, 'büntető', 1),
(10, 5, 10, 15, 'lövés', 2),
(11, 6, 2, 4, 'lövés', 1),
(12, 6, 3, 6, 'fejes', 1),
(13, 7, 4, 8, 'szabadrúgás', 1),
(14, 7, 5, 10, 'lövés', 1),
(15, 8, 6, 11, 'büntető', 1),
(16, 8, 7, 12, 'fejes', 1),
(17, 9, 8, 13, 'fejes', 1),
(18, 9, 9, 14, 'szabadrúgás', 1),
(19, 10, 10, 15, 'büntető', 1),
(20, 10, 1, 2, 'fejes', 1),
(21, 11, 1, 6, 'lövés', 1),
(22, 11, 3, 5, 'fejes', 1),
(23, 12, 2, 4, 'büntető', 1),
(24, 12, 4, 7, 'szöglet', 1),
(25, 13, 5, 10, 'fejes', 1),
(26, 13, 7, 12, 'lövés', 1),
(27, 14, 6, 11, 'szabadrúgás', 1),
(28, 14, 9, 14, 'büntető', 1),
(29, 15, 8, 13, 'fejes', 1),
(30, 1, 1, 2, 'szabadrúgás', 1),
(31, 1, 1, 3, 'lövés', 1),
(32, 1, 2, 22, 'szöglet', 2),
(33, 1, 2, 14, 'büntető', 1),
(34, 2, 3, 24, 'szöglet', 1),
(35, 2, 3, 25, 'büntető', 1),
(36, 2, 4, 36, 'fejes', 2),
(37, 2, 4, 42, 'büntető', 2),
(38, 3, 5, 49, 'fejes', 2),
(39, 3, 5, 51, 'fejes', 1),
(40, 3, 6, 58, 'szabadrúgás', 2),
(41, 3, 6, 59, 'büntető', 1),
(42, 4, 7, 68, 'lövés', 1),
(43, 4, 7, 69, 'szabadrúgás', 2),
(44, 4, 8, 80, 'szöglet', 1),
(45, 4, 8, 83, 'fejes', 1),
(46, 5, 9, 91, 'szöglet', 2),
(47, 5, 9, 92, 'fejes', 1),
(48, 5, 10, 106, 'büntető', 1),
(49, 5, 10, 107, 'lövés', 2),
(50, 6, 2, 13, 'fejes', 1),
(51, 6, 2, 21, 'büntető', 1),
(52, 6, 3, 30, 'szöglet', 1),
(53, 6, 3, 32, 'fejes', 1),
(54, 7, 4, 35, 'büntető', 1),
(55, 7, 4, 41, 'fejes', 1),
(56, 7, 5, 50, 'büntető', 1),
(57, 7, 5, 54, 'lövés', 1),
(58, 8, 6, 60, 'fejes', 2),
(59, 8, 6, 65, 'szöglet', 1),
(60, 8, 7, 76, 'szabadrúgás', 1),
(61, 8, 7, 74, 'büntető', 1),
(62, 9, 8, 84, 'büntető', 1),
(63, 9, 8, 87, 'szöglet', 2),
(64, 9, 9, 95, 'szöglet', 1),
(65, 9, 9, 98, 'lövés', 1),
(66, 10, 10, 105, 'szöglet', 1),
(67, 10, 10, 106, 'szabadrúgás', 1),
(68, 10, 1, 6, 'fejes', 1),
(69, 10, 1, 10, 'büntető', 1),
(70, 11, 1, 11, 'szöglet', 1),
(71, 11, 1, 9, 'fejes', 2),
(72, 11, 3, 28, 'büntető', 1),
(73, 11, 3, 31, 'lövés', 1),
(74, 12, 2, 20, 'büntető', 1),
(75, 12, 2, 19, 'lövés', 1),
(76, 12, 4, 40, 'szöglet', 2),
(77, 12, 4, 41, 'fejes', 1),
(78, 13, 5, 55, 'fejes', 1),
(79, 13, 5, 53, 'büntető', 1),
(80, 13, 7, 77, 'szöglet', 1),
(81, 13, 7, 74, 'lövés', 2),
(82, 14, 6, 64, 'büntető', 1),
(83, 14, 6, 65, 'fejes', 1),
(84, 14, 9, 98, 'büntető', 2),
(85, 14, 9, 99, 'szöglet', 1),
(86, 15, 8, 87, 'fejes', 1),
(87, 15, 8, 86, 'szabadrúgás', 1),
(88, 15, 10, 107, 'büntető', 1),
(89, 15, 10, 110, 'lövés', 1),
(90, 15, 10, 108, 'szöglet', 1);

--1.lekérdezés
--Városonként a legnagyobb befogadóképességű stadion és az ott játszott meccsek száma
SELECT 
    s.nev AS stadion_nev,
    s.helyszin AS varos,
    s.ferohely,
    COUNT(m.id) AS merkozes_szam
FROM Stadion s
LEFT JOIN Merkozesek m ON m.stadion_id = s.id
WHERE s.ferohely = (
    SELECT MAX(s2.ferohely)
    FROM Stadion s2
    WHERE s2.helyszin = s.helyszin
)
GROUP BY s.nev, s.helyszin, s.ferohely
ORDER BY merkozes_szam DESC;

--2.lekérdezés
--Játékosok, góljaik száma és csapatukon belüli helyezésük gól alapján
SELECT 
    j.nev AS jatekos_nev,
    cs.csapat_nev,
    SUM(g.golok_szama) AS osszes_gol,
    RANK() OVER (PARTITION BY cs.id ORDER BY SUM(g.golok_szama) DESC) AS csapaton_beluli_helyezes
FROM Jatekosok j
JOIN Csapatok cs ON j.csapat_id = cs.id
JOIN Golok g ON j.id = g.jatekos_id
GROUP BY j.id, j.nev, cs.id, cs.csapat_nev
ORDER BY cs.csapat_nev, csapaton_beluli_helyezes;

--3.lekérdezés
--Azok a csapatok, akik hazai pályán játszottak, és nyertek
SELECT  m.id AS merkozes_id,
        c1.csapat_nev AS hazai_csapat,
        c2.csapat_nev AS vendeg_csapat,
        SUM(CASE WHEN g.csapat_id = m.csapat_1_id THEN g.golok_szama ELSE 0 END) AS hazai_gol,
        SUM(CASE WHEN g.csapat_id = m.csapat_2_id THEN g.golok_szama ELSE 0 END) AS vendeg_gol
FROM Merkozesek m JOIN Csapatok c1 ON m.csapat_1_id = c1.id
				  JOIN Csapatok c2 ON m.csapat_2_id = c2.id
				  LEFT JOIN Golok g ON g.merkozes_id = m.id
GROUP BY m.id, c1.csapat_nev, c2.csapat_nev
HAVING SUM(CASE WHEN g.csapat_id = m.csapat_1_id THEN g.golok_szama ELSE 0 END) >
       SUM(CASE WHEN g.csapat_id = m.csapat_2_id THEN g.golok_szama ELSE 0 END);
       
--4.lekérdezés
--Pozíciónként ki szerezte a legtöbb gólt
SELECT *
FROM
(SELECT j.id AS jatekos_id ,
		j.nev AS jatekos_neve,
        j.pozicio,
        SUM(g.golok_szama) as osszes_gol,
        RANK() OVER (PARTITION BY j.pozicio ORDER BY SUM(g.golok_szama) DESC) AS helyezes
        FROM Jatekosok j JOIN Golok g ON g.jatekos_id=j.id
        GROUP BY j.id, j.nev, j.pozicio)  as Statisztika
        WHERE helyezes=1
        ORDER BY pozicio
        
--5.lekérdezés 
--jatekosok szamat listazza pozicionkent és szuletesi evenkent, rész- és végösszeggel 
SELECT IIF(GROUPING_ID(pozicio) = 1, 'Végösszeg', CAST(pozicio AS VARCHAR(100))) AS pozicio,
    CASE 
        WHEN GROUPING_ID(pozicio, szuletesi_ev) = 1 THEN 'Részösszeg'
        WHEN GROUPING_ID(pozicio, szuletesi_ev) = 3 THEN 'Végösszeg'
        ELSE CAST(szuletesi_ev AS VARCHAR(4))
    END AS szuletesi_ev,
    COUNT(*) AS jatekosok_szama
FROM Jatekosok
GROUP BY ROLLUP(pozicio, szuletesi_ev);

--6.lekérdezés        
--jatekosok akik legalább két meccsen lőttek gólt      
SELECT j.nev as jatekos_nev,
COUNT(DISTINCT g.merkozes_id) as merkozesek_szama,
      SUM(g.golok_szama) AS lott_golok
FROM Jatekosok j JOIN Golok g ON g.jatekos_id=j.id
GROUP BY j.nev      
HAVING COUNT(DISTINCT g.merkozes_id)>=2
