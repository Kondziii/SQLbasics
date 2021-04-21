--------------------------dzialy
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('Z01', 'Zarz¹d', 'K', 8);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('L01', 'Lakiernictwo', 'A', 5);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('L02', 'Lakiernictwo', 'B', 5);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('M11', 'Mechanika', 'A', 10);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('M12', 'Mechanika', 'C', 20);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('M13', 'Mechanika', 'D', 10);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('I21', 'Instalacje elektryczne', 'A', 4);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('I22', 'Instalacje elektryczne', 'D', 4);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('M31', 'Monta¿', 'F', 10);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('M32', 'Monta¿', 'B', 10);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('O41', 'Oprogramowanie', 'G', 6);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('O42', 'Oprogramowanie', 'G', 6);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('S51', 'Sprawdzanie jakoœci', 'I', 3);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('O61', 'Obs³uga', 'H', 2);
INSERT INTO fabryka_samochodow.dbo.dzialy VALUES ('O62', 'Obs³uga', 'J', 2);

------------------------------------------------------------------------------------------
--------------------------stanowisko

INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Lakiernik', 3000, 4000);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('M³odszy Lakiernik', 1500, 2500);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Mechanik', 2200, 3400);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Pomocnik Mechanika', 1200, 2000);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Mistrz Elektryk', 2800, 3100);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Uczeñ Elektryk', 1100, 1800);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Starszy Monter', 3200, 3800);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Monter', 2800, 3200);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Senior Developer', 15000, 18000);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Middle Developer', 10000, 13000);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Junior Developer', 5000, 7500);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Tester jakoœci', 4800, 5200);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Konsultant Specjalista', 6000, 6500);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Konsultant', 3000, 4000);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Dyrektor', 28000, 30000);
INSERT	INTO fabryka_samochodow.dbo.stanowiska VALUES ('Kierownik dzia³u', 3000, 20000);

--------------------------------------------------------------------------------------------
---------------------------pracownicy

INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Andrzej', 'Wiercipiêta', '2006/04/01', NULL, '79121151867', '+48-455-550-392', 29000, 500, 'Z01', 15, NULL);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Tomasz', 'Wiercipiêta', '2006/04/01', NULL, '53082750440', '+48-785-552-605', 4000, 400, 'Z01', 16, 1); 
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Agnieszka', 'Blejson', '2008/05/04', NULL, '99101559210', '+48-885-558-828', 3800, 100, 'Z01', 16, 1);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Hieronim', 'Chmielewski', '2006/04/01', NULL, '79102554704', '+48-535-551-408', 3600, 600, 'Z01', 16, 1); 
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Zygfryd', 'Jeziorski', '2012/12/01', NULL, '31110672065', '+48-735-555-135', 3800, 200, 'Z01', 16, 1); 
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Ewelina', 'Durma', '2006/04/01', NULL, '37062538347', '+48-455-553-014', 20000, 300, 'Z01', 16, 1);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Filip', 'Englert', '2007/02/01', NULL, '93081186822', '+48-665-557-718', 5200, 400, 'Z01', 16, 1);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Robert', 'Siemasz', '2006/04/01', NULL, '59082201771', '+48-665-556-862', 7000, 700, 'Z01', 16, 1);

INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Adam', 'Nowak', '2006/04/01', NULL, '45120747004', '+48-695-554-276', 3800, 100, 'L01', 1, 2);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Piotr', 'Krol', '2006/04/01', NULL, '07022408562', '+48-535-550-056', 4300, 200, 'L02', 1, 2);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('S³awomir', 'Michalski', '2008/03/12', NULL, '45052055066', '+48-785-555-416', 2200, 0, 'L01', 2, 9);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Jaros³aw', 'Kukulski', '2012/12/01', NULL, '17292352306', '+48-885-559-617', 2100, 50, 'L02', 2, 10);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Krzysztof', 'Wierzbicki', '2006/04/01', NULL, '32041345347', '+48-695-552-048', 3200, 100, 'M11', 3, 3);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Adam', 'Fikus', '2006/04/01', '2012/06/28', '27052734026', '+48-575-550-721', 3100, 0, 'M11', 3, 13);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Konrad', 'Sklaski', '2016/09/01', NULL, '89121884263', '+48-795-557-226', 1900, 0, 'M11', 4, 13);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Stanis³aw', 'Moniuszko', '2007/02/01', NULL, '33050300561', '+48-735-556-654', 3200, 200, 'M12', 3, 3);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Andrzej', 'Wrzosek', '2006/04/01', NULL, '72100329501', '+48-535-555-622', 1800, 0, 'M12', 4, 16);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Rafa³', 'Lisiecki', '2006/04/01', NULL, '46080137771', '+48-795-550-528', 1700, 0, 'M12', 4, 16);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Aleksander', 'Brzozka', '2007/01/02', '2019/09/12', '08222400277', '+48-795-559-665', 1500, 100, 'M12', 4, 16);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Jessica', 'Kowalska', '2006/04/01', NULL, '05121934302', '+48-515-559-351', 6200, 300, 'O61', 13, 8);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Anna', 'Wiœniewska', '2006/04/01', NULL, '34042135893', '+48-885-551-448', 3800, 0, 'O61', 14, 20);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Vitali', 'Malik', '2009/04/01', NULL, '14261258517', '+48-515-559-577', 3200, 200, 'I21', 5, 4);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Elwira', 'Prusinska', '2006/04/01', NULL, '36010911144', '+48-515-550-379', 6400, 200, 'O62', 13, 8);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Marek', 'Gadula', '2013/06/01', NULL, '34013096334', '+48-605-550-548', 3000, 0, 'I21', 5, 22);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Miros³aw', 'Leszczynski', '2006/04/01', NULL, '05042635010', '+48-605-553-163', 1700, 50, 'I21', 6, 22);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Tomasz', 'Kowalczyk', '2006/04/01', NULL, '93091938307', '+48-695-555-937', 3000, 100, 'I22', 5, 4);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Jerzy', 'Wojcik', '2007/09/01', NULL, '46051898294', '+48-575-550-071', 2950, 0, 'I22', 5, 26);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Pawe³', 'Leliwa', '2006/04/01', NULL, '01301469499', '+48-605-558-389', 3600, 200, 'M31', 7, 5);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Karolina', 'Wojcik', '2006/04/01', NULL, '47111460530', '+48-515-558-039', 3500, 0, 'M31', 7, 28);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Wojciech', 'Mazur', '2006/04/01', NULL, '42070954474', '+48-575-550-421', 2800, 0, 'M31', 8, 28);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Dominik', 'Szczesny', '2006/04/01', NULL, '36060957987', '+48-515-553-580', 2800, 0, 'M31', 8, 28);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Micha³', 'Rybak', '2006/04/01', NULL, '02053006064', '+48-785-555-714', 3600, 400, 'M32', 8, 5);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Kinga', 'Bielecka', '2006/04/01', '2019/09/12', '23060551433', '+48-605-552-168', 3500, 0, 'M32', 7, 32);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Lena', 'Brodecka', '2007/04/01', NULL, '19091097608', '+48-665-556-396', 5000, 100, 'S51', 12, 7);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Bart³omiej', 'Nawrocki', '2006/04/01', NULL, '10112677926', '+48-725-557-676', 2900, 0, 'M32', 8, 32);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Damian', 'Samosinski', '2006/04/01', NULL, '08311828616', '+48-535-554-478', 3400, 0, 'M32', 7, 32);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Maciej', 'Malik', '2006/04/01', '2019/09/12', '73061419177', '+48-735-557-709', 2900, 0, 'M31', 8, 28);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Zbigniew', 'Szubert', '2006/04/01', NULL, '22030672512', '+48-885-557-740', 18000, 200, 'O41', 9, 6);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Szymon', 'Szczerba', '2008/04/01', NULL, '11240608723', '+48-725-553-431', 12000, 0, 'O41', 10, 38);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Maria', 'Kwiatkowska', '2006/04/01', NULL, '05122983497', '+48-575-555-876', 3200, 200, 'M13', 3, 3);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Adam', 'Malysz', '2006/04/01', '2019/09/12', '99100623145', '+48-455-551-582', 4900, 0, 'S51', 12, 34);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Sebastian', 'Moneta', '2006/04/01', NULL, '50090611598', '+48-605-559-606', 6000, 0, 'O41', 11, 38);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Cezary', 'Psikuta', '2008/03/01', NULL, '08320993741', '+48-785-553-875', 11000, 0, 'O41', 10, 38);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Jerzy', 'Brzêczyszczykiewicz', '2006/04/01', NULL, '19322913130', '+48-725-550-906', 5000, 0, 'O41', 11, 38);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Joanna', 'Jarzêbska', '2006/04/01', NULL, '36052652971', '+48-605-550-128', 1700, 0, 'M13', 4, 40);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Filip', 'Protasiewicz', '2006/04/01', NULL, '86013105820', '+48-695-556-292', 16000, 0, 'O41', 9, 38);		
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Jadwiga', 'Gralina', '2006/04/01', '2020/02/12', '11083044779', '+48-695-558-008', 1200, 0, 'M13', 4, 40);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Marcin', 'Gapik', '2006/04/01', NULL, '17231073185', '+48-735-558-236', 5000, 0, 'S51', 12, 34);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Marek', 'Budzyñski', '2013/05/06', NULL, '84110739339', '+48-455-558-857', 2000, 0, 'M13', 4, 40);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Vladimir', 'Putin', '2006/04/01', NULL, '98070175816', '+48-575-551-337', 2900, 0, 'M31', 8, 28);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Marian', 'Szczupak', '2006/04/01', NULL, '67051534166', '+48-735-552-153', 3100, 0, 'M13', 3, 40);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Peter', 'Parker', '2006/04/01', NULL, '22030564378', '+48-725-556-739', 1800, 0, 'M13', 4, 40);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Zbigniew', 'Wiertara', '2006/04/01', NULL, '09110143986', '+48-455-554-896', 1800, 0, 'M13', 4, 40);	
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Mieczys³aw', 'M³ot', '2006/04/01', '2007/09/12', '00122505775', '+48-795-559-434', 2800, 0, 'M32', 8, 32);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Bronis³aw', 'Beczka', '2006/04/01', NULL, '94011410642', '+48-795-555-301', 3600, 200, 'M32', 7, 32);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Karina', 'Kieruzal', '2006/04/01', NULL, '55053108113', '+48-795-551-212', 16000, 200, 'O42', 9, 6);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Witold', 'Sztacheta', '2012/04/01', NULL, '37052606229', '+48-695-552-916', 12000, 0, 'O42', 10, 56);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Dominik', 'Kujawski', '2012/04/01', NULL, '27010738974', '+48-665-557-510', 11000, 0, 'O42', 10, 56);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Micha³', 'Florczuk', '2006/04/01', '2016/09/12', '08082210924', '+48-725-556-372', 5000, 50, 'O42', 11, 56);
INSERT	INTO fabryka_samochodow.dbo.pracownicy VALUES ('Anna', 'Brzêczyszczykiewicz', '2012/04/01', NULL, '31042182931', '+48-505-557-172', 3900, 0, 'O62', 14, 23); --------------------------

---------------------------------------------------------------------------------------------
--------------------klienci

INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Bo¿ena', 'Aleksandrowicz', '12120838421', '+48-795-552-336', 'baleks@amorki.pl', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Jerzy', 'Sasin', '01022504204', '+48-515-557-595', 'jsasin@gmail.com', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Alojzy', 'Karwowski', '05220634930', '+48-795-551-216', 'akarwo@samsklep.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Marcin', 'O³dak', '15250654266', '+48-885-556-894', 'moldak@gmail.com', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Witold', 'Przedpe³ski', '81070988469', '+48-885-551-234', 'wprzed@vp.pl', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Adolf', 'Wa¿yñski', '55052390810', '+48-515-558-944', 'awazy@fastcar.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Jackie', 'Multan', '64080237048', '+48-535-554-586', 'jmulta@porschecom.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Ryszard', 'Cywiñski', '91070719082', '+48-735-555-755', 'rcywin@amorki.pl', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Tomasz', 'Banaszek', '59110851417', '+48-695-551-245', 'tbana@gmail.com', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Micha³', 'Gajcy', '76063037998', '+48-665-558-686', 'mgajcy@luxcar.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Adam', 'Kruszewski', '14052434001', '+48-515-557-833', 'akrusz@audi.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Konrad', 'Artuchowski', '18212477853', '+48-785-559-462', 'kartu@audishop.com', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Krzysztof', 'Wójcik', '83100889753', '+48-605-557-237', 'kwojcik@seat.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Katarzyna', 'Rudowska', '36022251054', '+48-785-553-316', 'kruda@vp.pl', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Szymon', 'Ubysz', '93061765177', '+48-575-557-309', 'subysz@vp.pl', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Kacper', 'Kostrzewa', '97060239824', '+48-575-558-431', 'kkos@vp.pl', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Jakub', 'Miszewski', '40021496725', '+48-535-558-086', 'jmisz@carcom.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Diana', 'Osiecka', '09221796606', '+48-735-552-309', 'dosie@samshop.pl', 'firma');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Micha³', 'Kujawa', '15060392178', '+48-535-554-639', 'mkuj@vp.pl', 'indywidualny');
INSERT INTO fabryka_samochodow.dbo.klienci VALUES ('Piotr', 'Bereda', '48061145209', '+48-795-554-666', 'pbereda@vwshop.pl', 'firma');

------------------------------------------------------------------------------------------- 
--------------------samochody

INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Skoda', 'Fabia', 39900, 84500);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Skoda', 'Octavia', 69000, 135000);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Skoda', 'Kamiq', 77500, 112200);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Seat', 'Leon', 68750, 123500);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Seat', 'Ateca', 59900, 99800);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Seat', 'Ibiza', 45000, 81000);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Volkswagen', 'Golf', 72500, 140000);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Volkswagen', 'Passat', 87900, 172999);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Volkswagen', 'Arteon', 168000, 254700);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Audi', 'A3', 102870, 189700);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Audi', 'A5', 206680, 323900);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Audi', 'A4', 175630, 249000);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Porsche', 'Taycan', 289530, 478000);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Porsche', '911', 395550, 527600);
INSERT INTO fabryka_samochodow.dbo.samochody VALUES ('Porsche', 'Panamera', 257130, 410789);

---------------------------------------------------------------------------------------------- 
-----------------------silniki

INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TSI', 3.0, 450, 'benzyna');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TDI', 3.0, 400, 'diesel');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TDI', 2.0, 150, 'diesel');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TDI', 2.0, 120, 'diesel');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TDI', 1.6, 105, 'diesel');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TSI', 2.0, 180, 'benzyna');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TSI', 1.5, 150, 'benzyna');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('TSI', 1.0, 95, 'benzyna');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('MPI', 1.0, 60, 'benzyna');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('MPI', 1.0, 60, 'lpg');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('ETSI', 1.5, 170, 'elektryczny');
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('E-TSI', 1.5, 155, 'hybryda');--zmiana
INSERT INTO fabryka_samochodow.dbo.silniki VALUES ('E-TSI', 1.8, 185, 'hybryda');--zmiana


----------------------------------------------------------------------------------------------- 
------------------------egzemplarze

INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (1, 9, 'TRENDLINE', 'bia³y', 'HATCHBACK', 3, 47800)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (1, 9, 'TRENDLINE', 'bia³y', 'HATCHBACK', 3, 47800)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (1, 9, 'TRENDLINE', 'bia³y', 'HATCHBACK', 3, 47800)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (1, 9, 'TRENDLINE', 'bia³y', 'HATCHBACK', 5, 47800)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (1, 9, 'TRENDLINE', 'bia³y', 'HATCHBACK', 5, 47800)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (1, 8, 'HIGHLINE', 'czarny', 'HATCHBACK', 3, 77800)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (1, 10, 'BASIC', 'czerwony', 'KOMBI', 5, 49500)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (2, 4, 'COMFORTLINE', 'niebieski', 'SEDAN', 5, 112500)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (2, 4, 'BASIC', 'szary', 'KOMBI', 5, 87500) -- zmiana
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (2, 7, 'TRENDLINE', 'bia³y', 'KOMBI', 5, 92100)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (2, 7, 'TRENDLINE', 'bia³y', 'KOMBI', 5, 92100)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (2, 7, 'TRENDLINE', 'bia³y', 'KOMBI', 5, 92100)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (3, 8, 'R-LINE', 'czarny', 'SUV', 5, 112200)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (4, 5, 'TRENDLINE', 'czerwony', 'HATCHBACK', 5, 83000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (5, 5, 'TRENDLINE', 'niebieski', 'SUV', 5, 82000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (6, 9, 'COMFORTLINE', 'szary', 'HATCHBACK', 5, 62700)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (7, 7, 'COMFORTLINE', 'szary', 'HATCHBACK', 5, 104000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (8, 4, 'HIGHLINE', 'czarny', 'SEDAN', 5, 144000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (9, 2, 'R-LINE', '¿ó³ty', 'COUPE', 5, 254700)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (10, 11, 'TRENDLINE', 'niebieski', 'HATCHBACK', 3, 147900)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (11, 11, 'HIGHLINE', 'niebieski', 'COUPE', 5, 299000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (12, 6, 'COMFORTLINE', 'szary', 'KOMBI', 5, 200000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (12, 6, 'COMFORTLINE', 'szary', 'KOMBI', 5, 200000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (13, 2, 'COMFORTLINE', 'czarny', 'SUV', 5, 345000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (14, 1, 'R-LINE', 'czerwony', 'COUPE', 3, 527600)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (15, 1, 'TRENDLINE', 'bia³y', 'KOMBI', 5, 327600)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (7, 7, 'COMFORTLINE', 'szary', 'HATCHBACK', 5, 100000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (7, 7, 'COMFORTLINE', 'szary', 'HATCHBACK', 5, 100000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (7, 7, 'COMFORTLINE', 'szary', 'HATCHBACK', 5, 100000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (7, 7, 'COMFORTLINE', 'szary', 'HATCHBACK', 5, 100000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (8, 4, 'TRENDLINE', 'czarny', 'SEDAN', 5, 120000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (8, 4, 'HIGHLINE', 'bia³y', 'SEDAN', 5, 140000)
INSERT INTO fabryka_samochodow.dbo.egzemplarze VALUES (8, 4, 'TRENDLINE', 'czarny', 'SEDAN', 5, 120000)

---------------------------------------------------------------------------------------------
-----------------------zamowienia

INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (18, '2020/03/21', 3000, 'Wadowice, Olsztyñska 15', '2020/04/21')
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (1, '2020/04/12', 1000, '£ódŸ, Malinowa 28', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (2, '2020/05/12', 17000, '£ódŸ, Politechniki 28', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (15, '2019/12/30', 20900, 'Zduñska Wola, Czerwona 29', '2020/03/01')
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (3, '2020/01/10', 3000, '£ódŸ, Politechniki 12', '2020/03/02')
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (3, '2020/04/03', 3000, '£ódŸ, Politechniki 12', '2020/05/22')
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (16, '2020/05/21', 7400, 'Wadowice, Olbrzymia 69', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (4, '2020/04/03', 6000, '£ódŸ, Jarzêbinowa 69', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (5, '2020/05/21', 5600, 'Be³chatów, Stasica 69', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (19, '2020/04/30', 10000, 'Skierniewice, D³uga 16', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (20, '2020/04/27', DEFAULT, 'Skierniewice, Górna 14', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (6, '2020/05/22', 8200, 'Be³chatów, Miodowa 27', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (7, '2020/04/08', 9700, 'Be³chatów, Wrzosowa 97', '2020/04/29')
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (7, '2020/05/08', 11000, 'Be³chatów, Wrzosowa 97', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (13, '2020/03/30', 1500, 'Wa³brzych, Zielona 34', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (14, '2019/12/29', 4500, 'Zduñska Wola, Czerwona 14', '2020/02/24')
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (17, '2020/05/26', DEFAULT, 'Wadowice, Lubomirska 9', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (8, '2020/05/09', DEFAULT, 'Warszawa, Bronis³awa 74', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (9, '2020/05/01', DEFAULT, 'Warszawa, 100lecia 57', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (10, '2020/05/02', 1000, 'Warszawa, Kazachstañska 89', NULL)
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (11, '2020/03/23', 2000, 'Warszawa, Jerocholimska 19', '2020/05/30')
INSERT INTO fabryka_samochodow.dbo.zamowienia VALUES (12, '2020/03/30', 500, 'Wa³brzych, G³obowa 7', NULL)

---------------------------------------------------------------------------------------------
---------------------zamowienia_egzemplarze

INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (1, 100)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (1, 101)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (1, 102)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (2, 105)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (3, 121)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (3, 122)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (4, 125)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (5, 103)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (6, 104)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (7, 119)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (8, 117)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (9, 112)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (10, 118)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (11, 109)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (11, 110)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (11, 111)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (12, 123)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (13, 115)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (14, 124)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (15, 106)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (16, 116)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (17, 107)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (17, 108)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (18, 120)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (19, 114)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (20, 126)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (20, 127)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (20, 128)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (20, 129)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (21, 113)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (22, 130)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (22, 131)
INSERT INTO fabryka_samochodow.dbo.egzemplarze_zamowienia VALUES (22, 132)

---------------------------------------------------------------------------------------------
-----------------------------dzialy_samochody

--Skoda Fabia
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 1, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L02', 1, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M12', 1, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 1, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 1, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O41', 1, 5);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 1, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 1, 2);

--Skoda Octavia
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 2, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M13', 2, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 2, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 2, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 2, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 2, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 2, 1);

--Skoda Kamiq
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 3, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M12', 3, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 3, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M32', 3, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O41', 3, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 3, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O61', 3, 22);

--Seat Leon
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L02', 4, 9);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M13', 4, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 4, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 4, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 4, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 4, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 4, 3);

--Seat Ateca
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L02', 5, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M11', 5, 5);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 5, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 5, 6);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 5, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 5, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 5, 2);

--Seat Ibiza
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 6, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M12', 6, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I22', 6, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M32', 6, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 6, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 6, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O61', 6, 3);

--VW Golf
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 7, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M11', 7, 22);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I22', 7, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 7, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 7, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 7, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O61', 7, 2);

--VW Passat
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L02', 8, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M11', 8, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I22', 8, 12);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 8, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 8, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 8, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 8, 4);

--VW Arteon
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 9, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M13', 9, 5);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 9, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M32', 9, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 9, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 9, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 9, 2);

--Audi A3
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 10, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L02', 10, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M11', 10, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 10, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M32', 10, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O41', 10, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 10, 9);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 10, 2);

--Audi A5
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L02', 11, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M11', 11, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I22', 11, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M32', 11, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 11, 5);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 11, 7);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O61', 11, 2);


--Audi A4
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L02', 12, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M11', 12, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 12, 5);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I22', 12, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 12, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O41', 12, 3);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 12, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 12, 1);

--Porsche Taycan
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 13, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M11', 13, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I22', 13, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 13, 11);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 13, 4);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 13, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 13, 1);

--Porsche 911
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 14, 24);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M13', 14, 28);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 14, 5);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M32', 14, 23);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 14, 11);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 14, 12);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O61', 14, 5);

--Porsche Panamera
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('L01', 15, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M12', 15, 1);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('I21', 15, 25);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('M31', 15, 5);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O42', 15, 2);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('S51', 15, 18);
INSERT INTO fabryka_samochodow.dbo.dzialy_samochody VALUES ('O62', 15, 16);

---------------------------------------------------------------------------------------------

SELECT	* FROM	fabryka_samochodow.dbo.dzialy
SELECT	* FROM	fabryka_samochodow.dbo.stanowiska
SELECT	* FROM	fabryka_samochodow.dbo.pracownicy
SELECT	* FROM	fabryka_samochodow.dbo.klienci