-- INSERTY gatunki
INSERT INTO gatunki (id,nazwa) VALUES (1,'Akcja');
INSERT INTO gatunki (id,nazwa) VALUES (2,'RPG');
INSERT INTO gatunki (id,nazwa) VALUES (3,'Strategiczna'); 
INSERT INTO gatunki (id,nazwa) VALUES (4,'Przygodowa'); 
INSERT INTO gatunki (id,nazwa) VALUES (5,'Symulacjyna'); 
INSERT INTO gatunki (id,nazwa) VALUES (6,'Sportowa'); 
INSERT INTO gatunki (id,nazwa) VALUES (7,'Wyścigowa'); 
INSERT INTO gatunki (id,nazwa) VALUES (8,'Horror'); 
INSERT INTO gatunki (id,nazwa) VALUES (9,'FPS'); 


-- INSERTY kategorie_wiekowe_pegi
INSERT INTO kategorie_wiekowe_pegi (id,nazwa) VALUES (1,'PEGI 3');
INSERT INTO kategorie_wiekowe_pegi (id,nazwa) VALUES (2,'PEGI 7');
INSERT INTO kategorie_wiekowe_pegi (id,nazwa) VALUES (3,'PEGI 12');
INSERT INTO kategorie_wiekowe_pegi (id,nazwa) VALUES (4,'PEGI 16');
INSERT INTO kategorie_wiekowe_pegi (id,nazwa) VALUES (5,'PEGI 18');


-- INSERTY platformy
INSERT INTO platformy (id,nazwa) VALUES (1,'PC');
INSERT INTO platformy (id,nazwa) VALUES (2,'PlayStation');
INSERT INTO platformy (id,nazwa) VALUES (3,'PlayStation 2');
INSERT INTO platformy (id,nazwa) VALUES (4,'PlayStation 3');
INSERT INTO platformy (id,nazwa) VALUES (5,'PlayStation 4');
INSERT INTO platformy (id,nazwa) VALUES (6,'PlayStation 5');
INSERT INTO platformy (id,nazwa) VALUES (7,'Xbox'); 
INSERT INTO platformy (id,nazwa) VALUES (8,'Xbox 360'); 
INSERT INTO platformy (id,nazwa) VALUES (9,'Xbox One'); 
INSERT INTO platformy (id,nazwa) VALUES (10,'Xbox Series X/S'); 
INSERT INTO platformy (id,nazwa) VALUES (11,'Nintedno DS'); 
INSERT INTO platformy (id,nazwa) VALUES (12,'Nintedno 3DS'); 
INSERT INTO platformy (id,nazwa) VALUES (13,'Nintedno Switch'); 


-- INSERTY firmy
INSERT INTO firmy (id,nazwa) VALUES (1,'Electronic Arts');
INSERT INTO firmy (id,nazwa) VALUES (2,'Ubisoft');
INSERT INTO firmy (id,nazwa) VALUES (3,'Capcom');
INSERT INTO firmy (id,nazwa) VALUES (4,'Bandai Namco');
INSERT INTO firmy (id,nazwa) VALUES (5,'Warner Bros.');
INSERT INTO firmy (id,nazwa) VALUES (6,'THQ Nordic');
INSERT INTO firmy (id,nazwa) VALUES (7,'2K Games'); 
INSERT INTO firmy (id,nazwa) VALUES (8,'Techland'); 
INSERT INTO firmy (id,nazwa) VALUES (9,'Square Enix'); 
INSERT INTO firmy (id,nazwa) VALUES (10,'Blizzard Entertainment'); 
INSERT INTO firmy (id,nazwa) VALUES (11,'Konami'); 
INSERT INTO firmy (id,nazwa) VALUES (12,'CD Projekt RED'); 
INSERT INTO firmy (id,nazwa) VALUES (13,'Rockstar Games'); 
INSERT INTO firmy (id,nazwa) VALUES (14,'Nintendo'); 
INSERT INTO firmy (id,nazwa) VALUES (15,'Deep Silver'); 
INSERT INTO firmy (id,nazwa) VALUES (16,'Annapurna Interactive'); 
INSERT INTO firmy (id,nazwa) VALUES (17,'Sony Interactive Entertainment'); 
INSERT INTO firmy (id,nazwa) VALUES (18,'SEGA');
INSERT INTO firmy (id,nazwa) VALUES (19,'From Software');
INSERT INTO firmy (id,nazwa) VALUES (20,'Quantic Dream');
INSERT INTO firmy (id,nazwa) VALUES (21,'Dontnod Entertainment');
INSERT INTO firmy (id,nazwa) VALUES (22,'Deck Nine');


-- INSERTY recenzenci
INSERT INTO recenzenci (id,nazwa) VALUES (1,'IGN');
INSERT INTO recenzenci (id,nazwa) VALUES (2,'Eurogamer');
INSERT INTO recenzenci (id,nazwa) VALUES (3,'PC Gamer');
INSERT INTO recenzenci (id,nazwa) VALUES (4,'Push Square');
INSERT INTO recenzenci (id,nazwa) VALUES (5,'GamingBolt');
INSERT INTO recenzenci (id,nazwa) VALUES (6,'GameSpot');
INSERT INTO recenzenci (id,nazwa) VALUES (7,'GRYOnline.pl'); 


-- INSERTY multimedia
INSERT INTO multimedia (id,link) VALUES (1,'link1');
INSERT INTO multimedia (id,link) VALUES (2,'link2');
INSERT INTO multimedia (id,link) VALUES (3,'link3');
INSERT INTO multimedia (id,link) VALUES (4,'link4');
INSERT INTO multimedia (id,link) VALUES (5,'link5');
INSERT INTO multimedia (id,link) VALUES (6,'link6');
INSERT INTO multimedia (id,link) VALUES (7,'link7');
INSERT INTO multimedia (id,link) VALUES (8,'link8');


-- INSERTY gry
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (1,'Cyberpunk 2077',5,22,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (2,'Wiedźmin 3: Dziki Gon',5,51,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (3,'Wiedźmin 3: Dziki Gon - Serca z Kamienia',5,10,2,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (4,'Wiedźmin 3: Dziki Gon - Krew i Wino',5,16,2,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (5,'Assassin''s Creed Odyssey',5,44,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (6,'Assassin''s Creed Odyssey - Legacy of the First Blade',5,7,5,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (7,'Assassin''s Creed Odyssey - The Fate of Atlantis',5,14,5,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (8,'LEGO Super Marvel Heroes',1,44,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (9,'Dark Souls 3',4,32,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (10,'Dark Souls 3: Ashes of Ariandel',4,4,9,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (11,'Dark Souls 3: The Ringed City',4,7,9,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (12,'Need for Speed Heat',4,13,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (13,'Heavy Rain',5,10,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (14,'Beyond: Dwie Dusze',5,10.5,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (15,'Life is Strange Remastered',4,14,NULL,NULL);
INSERT INTO gry (id, nazwa, id_kategorie_wiekowe_pegi, srednia_dlugosc_w_h, id_gry_podstawowej, notatka) VALUES (16,'Life is Strange: Before to Storm Remastered',4,10,NULL,NULL);


--INSERTY gry_gatunki
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (1,1,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (2,1,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (3,2,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (4,2,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (5,2,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (6,3,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (7,3,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (8,3,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (9,4,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (10,4,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (11,4,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (12,5,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (13,5,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (14,5,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (15,6,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (16,6,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (17,6,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (18,7,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (19,7,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (20,7,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (23,8,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (24,9,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (25,9,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (26,9,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (27,10,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (28,10,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (29,10,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (30,11,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (31,11,2);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (32,11,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (33,12,7);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (34,13,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (35,13,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (36,14,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (37,14,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (38,15,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (39,15,4);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (40,16,1);
INSERT INTO gry_gatunki(id, id_gry, id_gatunki) VALUES (41,16,4);


-- INSERTY producenci_gry
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (1,1,12);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (2,2,12);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (3,3,12);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (4,4,12);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (5,5,2);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (6,6,2);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (7,7,2);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (8,8,5);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (9,9,19);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (10,10,19);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (11,11,19);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (12,12,1);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (13,13,20);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (14,14,20);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (15,15,22);
INSERT INTO producenci_gry (id,id_gry,id_firmy) VALUES (16,16,22);


--INSERTY typy_wydania
INSERT INTO typy_wydania (id,nazwa) VALUES (1,'Edycja podstawowa');
INSERT INTO typy_wydania (id,nazwa) VALUES (2,'Edycja deluxe');
INSERT INTO typy_wydania (id,nazwa) VALUES (3,'Edycja złota');
INSERT INTO typy_wydania (id,nazwa) VALUES (4,'Edycja platynowa');
INSERT INTO typy_wydania (id,nazwa) VALUES (5,'Edycja gry roku');
INSERT INTO typy_wydania (id,nazwa) VALUES (6,'Wydanie zbiorcze');
INSERT INTO typy_wydania (id,nazwa) VALUES (7,'Edycja odświeżona');
INSERT INTO typy_wydania (id,nazwa) VALUES (8,'Edycja specjalna');


-- INSERTY wydania
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (1,'Wiedźmin 3: Dziki Gon',1,12,1,2015,139.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (2,'Wiedźmin 3: Dziki Gon',1,12,5,2015,219.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (3,'Wiedźmin 3: Dziki Gon',1,12,9,2015,219.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (4,'Wiedźmin 3: Dziki Gon',5,12,1,2016,129.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (5,'Wiedźmin 3: Dziki Gon',5,12,5,2016,169.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (6,'Wiedźmin 3: Dziki Gon',5,12,9,2016,169.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (7,'Cyberpunk 2077',1,12,1,2020,199.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (8,'Cyberpunk 2077',1,12,5,2020,219.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (9,'Cyberpunk 2077',1,12,9,2020,219.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (10,'Assassin''s Creed Odyssey',1,2,1,2019,249.90,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (11,'Assassin''s Creed Odyssey',1,2,5,2019,289.90,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (12,'Assassin''s Creed Odyssey',1,2,9,2019,289.90,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (13,'Assassin''s Creed Odyssey',3,2,1,2019,399.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (14,'Assassin''s Creed Odyssey',3,2,5,2019,415.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (15,'Assassin''s Creed Odyssey',3,2,9,2019,415.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (16,'LEGO Super Marvel Heroes',1,5,1,2013,104.90,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (17,'LEGO Super Marvel Heroes',1,5,4,2013,139.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (18,'LEGO Super Marvel Heroes',1,5,5,2013,139.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (19,'LEGO Super Marvel Heroes',1,5,8,2013,169.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (20,'LEGO Super Marvel Heroes',1,5,9,2013,169.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (21,'Dark Souls 3',1,4,1,2016,199.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (22,'Dark Souls 3',1,4,5,2016,209.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (23,'Dark Souls 3',1,4,9,2016,209.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (24,'Dark Souls 3',2,4,1,2016,299.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (25,'Dark Souls 3',2,4,5,2016,299.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (26,'Dark Souls 3',2,4,9,2016,299.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (27,'Need for Speed Heat',1,1,1,2019,249.90,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (28,'Need for Speed Heat',1,1,5,2019,289.90,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (29,'Need for Speed Heat',1,1,9,2019,289.90,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (30,'Kolekcja Heavy Rain i BEYOND: Dwie Dusze',6,17,5,2016,169.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (31,'Life is Strange Remastered Collection',6,19,1,2022,160.00,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (32,'Life is Strange Remastered Collection',6,19,5,2022,169.99,NULL);
INSERT INTO wydania (id, nazwa, id_typy_wydania, id_firmy, id_platformy, rok_wydania, cena_na_premiere, notatka) VALUES (33,'Life is Strange Remastered Collection',6,19,9,2022,169.99,NULL);


-- INSERTY wydania_gry
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (1,1,2);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (2,2,2);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (3,3,2);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (4,4,2);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (5,4,3);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (6,4,4);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (7,5,2);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (8,5,3);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (9,5,4);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (10,6,2);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (11,6,3);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (12,6,4);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (13,7,1);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (14,8,1);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (15,9,1);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (16,10,5);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (17,11,5);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (18,12,5);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (19,13,5);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (20,13,6);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (21,13,7);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (22,14,5);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (23,14,6);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (24,14,7);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (25,15,5);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (26,15,6);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (27,15,7);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (28,16,8);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (29,17,8);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (30,18,8);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (31,19,8);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (32,20,8);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (33,21,9);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (34,22,9);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (35,23,9);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (36,24,9);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (37,24,10);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (38,24,11);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (39,25,9);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (40,25,10);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (41,25,11);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (42,26,9);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (43,26,10);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (44,26,11);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (45,27,12);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (46,28,12);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (47,29,12);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (48,30,13);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (49,30,14);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (50,31,15);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (51,31,16);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (52,32,15);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (53,32,16);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (54,33,15);
INSERT INTO wydania_gry(id, id_wydania, id_gry) VALUES (55,33,16);


-- INSERTY oceny
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (1,1,1,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (2,1,2,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (3,1,3,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (4,2,2,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (5,2,3,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (6,2,5,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (7,3,1,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (8,3,3,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (9,3,4,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (10,4,1,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (11,4,7,10,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (12,5,2,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (13,5,3,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (14,6,1,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (15,6,4,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (16,6,6,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (17,7,1,6,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (18,7,2,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (19,7,3,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (20,8,2,5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (21,8,3,4.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (22,8,5,5.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (23,9,1,5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (24,9,3,5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (25,9,4,5.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (28,10,1,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (29,10,2,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (30,11,3,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (31,11,5,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (32,11,7,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (33,12,2,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (34,12,4,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (35,13,4,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (36,13,5,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (37,13,6,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (38,14,1,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (39,14,3,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (40,14,5,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (41,15,2,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (42,15,4,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (43,15,7,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (44,16,3,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (45,16,4,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (46,17,3,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (47,17,5,7,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (48,17,7,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (49,18,3,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (50,18,4,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (51,19,1,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (52,19,2,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (53,19,3,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (54,20,1,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (55,20,3,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (56,20,5,7,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (57,21,2,10,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (58,21,4,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (59,21,7,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (60,22,2,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (61,22,4,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (62,22,7,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (63,23,2,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (64,23,4,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (65,23,7,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (66,24,3,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (67,24,6,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (68,24,7,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (69,25,1,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (70,25,2,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (71,25,5,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (72,26,2,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (73,26,3,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (74,26,6,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (75,27,2,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (76,27,3,7,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (77,28,2,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (78,28,4,7,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (79,28,5,6.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (80,29,1,7,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (81,29,4,7.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (82,30,1,8,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (83,30,3,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (84,30,4,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (85,30,5,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (86,31,1,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (87,31,2,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (88,31,5,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (89,32,2,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (90,32,4,8.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (91,32,6,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (92,33,3,9.5,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (93,33,4,9,NULL);
INSERT INTO oceny(id, id_wydania, id_recenzenci, ocena, komentarz) VALUES (94,33,5,9,NULL);


-- INSERTY wydania_multimedia
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (1,1,1);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (2,2,1);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (3,3,1);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (4,4,1);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (5,5,1);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (6,6,1);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (7,7,2);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (8,8,2);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (9,9,2);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (10,10,3);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (11,11,3);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (12,12,3);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (13,13,3);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (14,14,3);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (15,15,3);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (16,16,4);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (17,17,4);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (18,18,4);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (19,19,4);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (20,20,4);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (21,21,5);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (22,22,5);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (23,23,5);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (24,24,5);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (25,25,5);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (26,26,5);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (27,27,6);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (28,28,6);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (29,29,6);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (30,30,7);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (33,31,8);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (34,32,8);
INSERT INTO wydania_multimedia (id,id_wydania,id_multimedia) VALUES (35,33,8);