-- add Continents in database
-- =====================================
INSERT IGNORE INTO CONTINENT(Hemisphere, CT_Name, Size_squareMiles)
VALUES
("Northern, Western", "North America", 9540000),
("Northern, Southern, Western", "South America", 6890000),
("Northern, Southern, Western, Eastern", "Africa", 11724000),
("Northern, Western, Eastern", "Europe", 3930000),
("Northern, Southern, Eastern", "Asia", 17200000),
("Southern, Eastern", "Australia & Oceania", 3500000);
-- =====================================

-- Countries in North America 
-- =====================================
INSERT IGNORE INTO COUNTRY(Number_of_citizens, C_Name, Dominant_language, C_location)
VALUES
(41528680, "Canada", "English, French", "North America"),
(131946900, "Mexico", "Spanish", "North America"),
(340110988, "United States", "English", "North America"),
(2824913, "Jamaica", "Jamaican English, Jamaican Patois", "North America"),
(11470261, "Haiti", "French, Haitian Creole", "North America"),
(4337768, "Panama", "Spanish", "North America"),
(9748532, "Cuba", "Spanish", "North America");

INSERT IGNORE INTO GOVERNMENT(Location_of_capital, C_name, Founding_date, Leader_name)
VALUES
("Ottawa", "Canada", "1867-07-01", "Mark Carney"),
("Mexico City", "Mexico", "1810-09-16", "Claudia Sheinbaum"),
("Washington, D.C.", "United States", "1776-07-04", "Donald Trump"),
("Kingston", "Jamaica", "1962-08-06", "Andrew Holness"),
("Port-au-Prince", "Haiti", "1804-01-01", "Ariel Henry"),
("Panama City", "Panama", "1903-11-03", "Laurentino Cortizo"),
("Havana", "Cuba", "1902-05-20", "Miguel Díaz-Canel");


-- GDP is in USD
INSERT IGNORE INTO ECONOMY(C_name, GDP, Dominant_import, Dominant_export)
VALUES
("Canada", "2515000000000", "Motor vehicles", "Crude Petroleum"),
("Mexico", "1420000000000", "Machinery", "Vehicles"),
("United States", "26700000000000", "Electronics", "Aircraft"),
("Jamaica", "16000000000", "Machinery", "Alumina"),
("Haiti", "21000000000", "Food", "Apparel"),
("Panama", "76000000000", "Machinery", "Bananas"),
("Cuba", "100000000000", "Machinery", "Nickel");

INSERT IGNORE INTO LEADER(L_name, Leader_Political_party)
VALUES
("Mark Carney", "Liberal Party of Canada"),
("Claudia Sheinbaum", "National Regeneration Movement (MORENA)"),
("Donald Trump", "Republican Party"),
("Andrew Holness", "Jamaica Labour Party"),
("Ariel Henry", "Independent"),
("Laurentino Cortizo", "Democratic Revolutionary Party"),
("Miguel Díaz-Canel", "Communist Party of Cuba");
-- =====================================

-- Countries in South America
-- =====================================
INSERT IGNORE INTO COUNTRY(Number_of_citizens, C_Name, Dominant_language, C_location)
VALUES
(47067441, "Argentina", "Spanish", "South America"),
(19629588, "Chile", "Spanish", "South America"),
(212583750, "Brazil", "Portuguese", "South America"),
(34352720, "Peru", "Spanish", "South America"),
(11312620, "Bolivia", "Spanish", "South America"),
(30518260, "Venezuela", "Spanish", "South America"),
(17483326, "Ecuador", "Spanish", "South America");

INSERT IGNORE INTO GOVERNMENT(Location_of_capital, C_name, Founding_date, Leader_name)
VALUES
("Buenos Aires", "Argentina", '1816-07-09', "Javier Milei"),
("Santiago", "Chile", '1818-02-12', "Gabriel Boric"),
("Brasília", "Brazil", '1822-09-07', "Luiz Inácio Lula da Silva"),
("Lima", "Peru", '1821-07-28', "Dina Boluarte"),
("Sucre", "Bolivia", '1825-08-06', "Luis Arce"),
("Caracas", "Venezuela", '1811-07-05', "Nicolás Maduro"),
("Quito", "Ecuador", '1830-05-13', "Daniel Noboa");

-- GDP is in USD
INSERT IGNORE INTO ECONOMY(C_name, GDP, Dominant_import, Dominant_export)
VALUES
("Argentina", "487000000000", "Machinery", "Soybeans"),
("Chile", "343820000000", "Machinery", "Copper"),
("Brazil", "2331000000000", "Machinery", "Iron Ore"),
("Peru", "267600000000", "Machinery", "Copper"),
("Bolivia", "40000000000", "Machinery", "Natural Gas"),
("Venezuela", "99900000000", "Food", "Crude Oil"),
("Ecuador", "118850000000", "Machinery", "Crude Oil");

INSERT IGNORE INTO LEADER(L_name, Leader_Political_party)
VALUES
("Javier Milei", "La Libertad Avanza"),
("Gabriel Boric", "Social Convergence"),
("Luiz Inácio Lula da Silva", "Workers' Party"),
("Dina Boluarte", "Independent"),
("Luis Arce", "Movement for Socialism"),
("Nicolás Maduro", "United Socialist Party of Venezuela"),
("Daniel Noboa", "National Democratic Action");
-- =====================================

-- Countries in Europe
-- =====================================
INSERT IGNORE INTO COUNTRY(Number_of_citizens, C_Name, Dominant_language, C_location)
VALUES
(83555478, "Germany", "German", "Europe"),
(68600000, "France", "French", "Europe"),
(58900000, "Italy", "Italian", "Europe"),
(49077984, "Spain", "Spanish", "Europe"),
(37636508, "Poland", "Polish", "Europe"),
(10639726, "Portugal", "Portuguese", "Europe"),
(5600000, "Finland", "Finnish", "Europe");

INSERT IGNORE INTO GOVERNMENT(Location_of_capital, C_name, Founding_date, Leader_name)
VALUES
("Berlin", "Germany", '1871-01-18', "Friedrich Merz"),
("Paris", "France", '1792-09-21', "Emmanuel Macron"),
("Rome", "Italy", '1861-03-17', "Giorgia Meloni"),
("Madrid", "Spain", '1479-01-20', "Pedro Sánchez"),
("Warsaw", "Poland", '1025-04-18', "Mateusz Morawiecki"),
("Lisbon", "Portugal", '1143-10-05', "António Costa"),
("Helsinki", "Finland", '1917-12-06', "Petteri Orpo");

-- GDP is in USD
INSERT IGNORE INTO ECONOMY(C_name, GDP, Dominant_import, Dominant_export)
VALUES
("Germany", "5762000000000", "Crude Oil", "Vehicles"),
("France", "4416000000000", "Crude Oil", "Aircraft"),
("Italy", "2100000000000", "Crude Oil", "Machinery"),
("Spain", "1722746000000", "Crude Oil", "Vehicles"),
("Poland", "980000000000", "Crude Oil", "Machinery"),
("Portugal", "512200000000", "Crude Oil", "Vehicles"),
("Finland", "297416000000", "Crude Oil", "Machinery");

INSERT IGNORE INTO LEADER(L_name, Leader_Political_party)
VALUES
("Friedrich Merz", "Christian Democratic Union"),
("Emmanuel Macron", "Renaissance"),
("Giorgia Meloni", "Brothers of Italy"),
("Pedro Sánchez", "Spanish Socialist Workers' Party"),
("Mateusz Morawiecki", "Law and Justice"),
("António Costa", "Socialist Party"),
("Petteri Orpo", "National Coalition Party");
-- =====================================

-- Countries in Africa
-- =====================================
INSERT IGNORE INTO COUNTRY(Number_of_citizens, C_Name, Dominant_language, C_location)
VALUES
(230000000, "Nigeria", "English", "Africa"),
(132000000, "Ethiopia", "Amharic", "Africa"),
(116538210, "Egypt", "Arabic", "Africa"),
(62000000, "South Africa", "Zulu", "Africa"),
(52400000, "Kenya", "Swahili", "Africa"),
(37712505, "Morocco", "Arabic", "Africa"),
(33787914, "Ghana", "English", "Africa");

INSERT IGNORE INTO GOVERNMENT(Location_of_capital, C_name, Founding_date, Leader_name)
VALUES
("Abuja", "Nigeria", '1960-10-01', "Bola Tinubu"),
("Addis Ababa", "Ethiopia", '1995-08-21', "Abiy Ahmed"),
("Cairo", "Egypt", '1953-06-18', "Abdel Fattah el-Sisi"),
("Pretoria", "South Africa", '1994-04-27', "Cyril Ramaphosa"),
("Nairobi", "Kenya", '1963-12-12', "William Ruto"),
("Rabat", "Morocco", '1956-03-02', "Aziz Akhannouch"),
("Accra", "Ghana", '1957-03-06', "Nana Akufo-Addo");

-- GDP is in USD
INSERT IGNORE INTO ECONOMY(C_name, GDP, Dominant_import, Dominant_export)
VALUES
("Nigeria", "188270000000", "Machinery", "Crude Oil"),
("Ethiopia", "120000000000", "Machinery", "Coffee"),
("Egypt", "2921000000000", "Machinery", "Crude Oil"),
("South Africa", "410340000000", "Machinery", "Gold"),
("Kenya", "100000000000", "Machinery", "Tea"),
("Morocco", "441000000000", "Machinery", "Vehicles"),
("Ghana", "380000000000", "Machinery", "Gold");

INSERT IGNORE INTO LEADER(L_name, Leader_Political_party)
VALUES
("Bola Tinubu", "All Progressives Congress"),
("Abiy Ahmed", "Prosperity Party"),
("Abdel Fattah el-Sisi", "Independent"),
("Cyril Ramaphosa", "African National Congress"),
("William Ruto", "United Democratic Alliance"),
("Aziz Akhannouch", "National Rally of Independents"),
("Nana Akufo-Addo", "New Patriotic Party");
-- =====================================

-- Countries in Asia
-- =====================================
INSERT IGNORE INTO COUNTRY(Number_of_citizens, C_Name, Dominant_language, C_location)
VALUES
(1408280000, "China", "Mandarin", "Asia"),
(1407563842, "India", "Hindi", "Asia"),
(125000000, "Japan", "Japanese", "Asia"),
(273753191, "Indonesia", "Indonesian", "Asia"),
(17305445, "Cambodia", "Khmer", "Asia"),
(54340117, "South Korea", "Korean", "Asia"),
(87640906, "Vietnam", "Vietnamese", "Asia");

INSERT IGNORE INTO GOVERNMENT(Location_of_capital, C_name, Founding_date, Leader_name)
VALUES
("Beijing", "China", '1949-10-01', "Xi Jinping"),
("New Delhi", "India", '1947-08-15', "Narendra Modi"),
("Tokyo", "Japan", '1947-05-03', "Fumio Kishida"),
("Jakarta", "Indonesia", '1945-08-17', "Joko Widodo"),
("Phnom Penh", "Cambodia", '1953-11-09', "Hun Sen"),
("Seoul", "South Korea", '1948-08-15', "Yoon Suk-yeol"),
("Hanoi", "Vietnam", '1945-09-02', "Nguyen Phu Trong");

-- GDP is in USD
INSERT IGNORE INTO ECONOMY(C_name, GDP, Dominant_import, Dominant_export)
VALUES
("China", "18700000000000", "Semiconductors", "Electronics"),
("India", "3600000000000", "Crude Oil", "Petroleum Products"),
("Japan", "4200000000000", "Crude Oil", "Vehicles"),
("Indonesia", "1300000000000", "Machinery", "Palm Oil"),
("Cambodia", "30000000000", "Machinery", "Textiles"),
("South Korea", "1800000000000", "Crude Oil", "Semiconductors"),
("Vietnam", "400000000000", "Machinery", "Electronics");

INSERT IGNORE INTO LEADER(L_name, Leader_Political_party)
VALUES
("Xi Jinping", "Communist Party of China"),
("Narendra Modi", "Bharatiya Janata Party"),
("Fumio Kishida", "Liberal Democratic Party"),
("Joko Widodo", "Indonesian Democratic Party of Struggle"),
("Hun Sen", "Cambodian People's Party"),
("Yoon Suk-yeol", "People Power Party"),
("Nguyen Phu Trong", "Communist Party of Vietnam");
-- =====================================

-- Countries in Australia & Oceania
-- =====================================
INSERT IGNORE INTO COUNTRY(Number_of_citizens, C_Name, Dominant_language, C_location)
VALUES
(26801521, "Australia", "English", "Australia & Oceania"),
(516122, "Solomon Islands", "English", "Australia & Oceania"),
(896444, "Fiji", "English", "Australia & Oceania"),
(104084, "Kiribati", "English", "Australia & Oceania"),
(926276, "Papua New Guinea", "Tok Pisin", "Australia & Oceania"),
(1866782, "New Zealand", "English", "Australia & Oceania"),
(112051, "Samoa", "Samoan", "Australia & Oceania");

INSERT IGNORE INTO GOVERNMENT(Location_of_capital, C_name, Founding_date, Leader_name)
VALUES
("Canberra", "Australia", '1901-01-01', "Anthony Albanese"),
("Honiara", "Solomon Islands", '1978-07-07', "Manasseh Sogavare"),
("Suva", "Fiji", '1970-10-10', "Sitiveni Rabuka"),
("Tarawa", "Kiribati", '1979-07-12', "Taneti Maamau"),
("Port Moresby", "Papua New Guinea", '1975-09-16', "James Marape"),
("Wellington", "New Zealand", '1907-09-26', "Chris Hipkins"),
("Apia", "Samoa", '1962-01-01', "Fiamē Naomi Mataʻafa");

-- GDP is in USD
INSERT IGNORE INTO ECONOMY(C_name, GDP, Dominant_import, Dominant_export)
VALUES
("Australia", "1700000000000", "Machinery", "Iron Ore"),
("Solomon Islands", "1500000000", "Machinery", "Timber"),
("Fiji", "5000000000", "Machinery", "Sugar"),
("Kiribati", "200000000", "Machinery", "Fish"),
("Papua New Guinea", "25000000000", "Machinery", "Gold"),
("New Zealand", "250000000000", "Machinery", "Dairy Products"),
("Samoa", "1000000000", "Machinery", "Fish");

INSERT IGNORE INTO LEADER(L_name, Leader_Political_party)
VALUES
("Anthony Albanese", "Australian Labor Party"),
("Manasseh Sogavare", "Independent"),
("Sitiveni Rabuka", "People's Alliance"),
("Taneti Maamau", "Tobwaan Kiribati Party"),
("James Marape", "Pangu Party"),
("Chris Hipkins", "Labour Party"),
("Fiamē Naomi Mataʻafa", "Fa'atuatua i le Atua Samoa ua Tasi");
-- =====================================

-- Alliances
-- =====================================
INSERT IGNORE INTO ALLIANCE(A_name, founding_date)
VALUES
("European Union", "1993-11-01"),
("North Atlantic Treaty Organization", "1949-04-04"),
("Group of Seven", "1975-11-15"),
("Group of Twenty", "1999-12-15"),
("Organisation for Economic Co-operation and Development", "1961-09-30"),
("Commonwealth of Nations", "1926-11-19"),
("Pacific Alliance", "2011-04-28"),
("Bolivarian Alliance for the Peoples of Our America", "2004-12-14"),
("Community of Latin American and Caribbean States", "2011-12-03"),
("Organization of American States", "1948-04-30"),
("African Union", "2002-07-09"),
("Economic Community of West African States", "1975-05-28"),
("Southern African Development Community", "1992-08-17"),
("East African Community", "2000-07-07"),
("Association of Southeast Asian Nations", "1967-08-08"),
("Asia-Pacific Economic Cooperation", "1989-11-06"),
("Shanghai Cooperation Organisation", "2001-06-15"),
("South Asian Association for Regional Cooperation", "1985-12-08"),
("Australia New Zealand United States Security Treaty", "1951-09-01");

INSERT IGNORE INTO ALLIANCE_MEMBER(A_name, C_name)
VALUES 
("European Union", "Germany"),
("European Union", "France"),
("European Union", "Italy"),
("European Union", "Spain"),
("European Union", "Poland"),
("European Union", "Portugal"),
("European Union", "Finland"),
("North Atlantic Treaty Organization", "Germany"),
("North Atlantic Treaty Organization", "France"),
("North Atlantic Treaty Organization", "Italy"),
("North Atlantic Treaty Organization", "Spain"),
("North Atlantic Treaty Organization", "Poland"),
("North Atlantic Treaty Organization", "Portugal"),
("North Atlantic Treaty Organization", "Finland"),
("North Atlantic Treaty Organization", "United States"),
("North Atlantic Treaty Organization", "Canada"),
("Group of Seven", "Germany"),
("Group of Seven", "France"),
("Group of Seven", "Italy"),
("Group of Seven", "Japan"),
("Group of Seven", "Canada"),
("Group of Seven", "United States"),
("Group of Twenty", "Germany"),
("Group of Twenty", "France"),
("Group of Twenty", "Italy"),
("Group of Twenty", "United States"),
("Group of Twenty", "Canada"),
("Group of Twenty", "Brazil"),
("Group of Twenty", "Mexico"),
("Group of Twenty", "Argentina"),
("Group of Twenty", "China"),
("Group of Twenty", "India"),
("Group of Twenty", "Japan"),
("Group of Twenty", "Indonesia"),
("Group of Twenty", "South Korea"),
("Group of Twenty", "South Africa"),
("Organisation for Economic Co-operation and Development", "Germany"),
("Organisation for Economic Co-operation and Development", "France"),
("Organisation for Economic Co-operation and Development", "Italy"),
("Organisation for Economic Co-operation and Development", "Spain"),
("Organisation for Economic Co-operation and Development", "Poland"),
("Organisation for Economic Co-operation and Development", "Portugal"),
("Organisation for Economic Co-operation and Development", "Finland"),
("Organisation for Economic Co-operation and Development", "United States"),
("Organisation for Economic Co-operation and Development", "Canada"),
("Organisation for Economic Co-operation and Development", "Mexico"),
("Organisation for Economic Co-operation and Development", "Japan"),
("Organisation for Economic Co-operation and Development", "South Korea"),
("Organisation for Economic Co-operation and Development", "Chile"),
("Organisation for Economic Co-operation and Development", "Australia"),
("Organisation for Economic Co-operation and Development", "New Zealand"),
("Commonwealth of Nations", "Canada"),
("Commonwealth of Nations", "Jamaica"),
("Commonwealth of Nations", "Australia"),
("Commonwealth of Nations", "New Zealand"),
("Commonwealth of Nations", "Fiji"),
("Commonwealth of Nations", "Solomon Islands"),
("Commonwealth of Nations", "Kiribati"),
("Commonwealth of Nations", "Samoa"),
("Pacific Alliance", "Chile"),
("Pacific Alliance", "Mexico"),
("Pacific Alliance", "Peru"),
("Bolivarian Alliance for the Peoples of Our America", "Venezuela"),
("Bolivarian Alliance for the Peoples of Our America", "Bolivia"),
("Bolivarian Alliance for the Peoples of Our America", "Cuba"),
("Community of Latin American and Caribbean States", "Argentina"),
("Community of Latin American and Caribbean States", "Brazil"),
("Community of Latin American and Caribbean States", "Chile"),
("Community of Latin American and Caribbean States", "Peru"),
("Community of Latin American and Caribbean States", "Ecuador"),
("Community of Latin American and Caribbean States", "Bolivia"),
("Community of Latin American and Caribbean States", "Venezuela"),
("Organization of American States", "United States"),
("Organization of American States", "Canada"),
("Organization of American States", "Mexico"),
("Organization of American States", "Jamaica"),
("Organization of American States", "Haiti"),
("Organization of American States", "Panama"),
("Organization of American States", "Argentina"),
("Organization of American States", "Brazil"),
("Organization of American States", "Chile"),
("Organization of American States", "Peru"),
("Organization of American States", "Ecuador"),
("Organization of American States", "Bolivia"),
("African Union", "Nigeria"),
("African Union", "Ethiopia"),
("African Union", "Egypt"),
("African Union", "South Africa"),
("African Union", "Kenya"),
("African Union", "Morocco"),
("African Union", "Ghana"),
("Economic Community of West African States", "Nigeria"),
("Economic Community of West African States", "Ghana"),
("Southern African Development Community", "South Africa"),
("East African Community", "Kenya"),
("Association of Southeast Asian Nations", "Indonesia"),
("Association of Southeast Asian Nations", "Cambodia"),
("Association of Southeast Asian Nations", "Vietnam"),
("Asia-Pacific Economic Cooperation", "United States"),
("Asia-Pacific Economic Cooperation", "Canada"),
("Asia-Pacific Economic Cooperation", "Mexico"),
("Asia-Pacific Economic Cooperation", "Japan"),
("Asia-Pacific Economic Cooperation", "South Korea"),
("Asia-Pacific Economic Cooperation", "Indonesia"),
("Asia-Pacific Economic Cooperation", "Vietnam"),
("Asia-Pacific Economic Cooperation", "Australia"),
("Asia-Pacific Economic Cooperation", "New Zealand"),
("Asia-Pacific Economic Cooperation", "Papua New Guinea"),
("Shanghai Cooperation Organisation", "China"),
("Shanghai Cooperation Organisation", "India"),
("South Asian Association for Regional Cooperation", "India"),
("Australia New Zealand United States Security Treaty", "Australia"),
("Australia New Zealand United States Security Treaty", "New Zealand");
-- =====================================

-- Relationships
-- =====================================
INSERT IGNORE INTO PART_OF (A_name, C_name, length_of_membership)
VALUES
  ("European Union", "Germany", 67),
  ("European Union", "France", 67),
  ("European Union", "Italy", 67),
  ("European Union", "Spain", 39),
  ("European Union", "Poland", 21),
  ("European Union", "Portugal", 39),
  ("European Union", "Finland", 30),
  ("North Atlantic Treaty Organization", "Germany", 70),
  ("North Atlantic Treaty Organization", "France", 75),
  ("North Atlantic Treaty Organization", "Italy", 75),
  ("North Atlantic Treaty Organization", "Spain", 43),
  ("North Atlantic Treaty Organization", "Poland", 26),
  ("North Atlantic Treaty Organization", "Portugal", 75),
  ("North Atlantic Treaty Organization", "Finland", 2),
  ("North Atlantic Treaty Organization", "United States", 75),
  ("North Atlantic Treaty Organization", "Canada", 75),
  ("Group of Seven", "Germany", 50),
  ("Group of Seven", "France", 50),
  ("Group of Seven", "Italy", 50),
  ("Group of Seven", "Japan", 50),
  ("Group of Seven", "Canada", 50),
  ("Group of Seven", "United States", 50),
  ("Group of Twenty", "Germany", 26),
  ("Group of Twenty", "France", 26),
  ("Group of Twenty", "Italy", 26),
  ("Group of Twenty", "United States", 26),
  ("Group of Twenty", "Canada", 26),
  ("Group of Twenty", "Brazil", 26),
  ("Group of Twenty", "Mexico", 26),
  ("Group of Twenty", "Argentina", 26),
  ("Group of Twenty", "China", 26),
  ("Group of Twenty", "India", 26),
  ("Group of Twenty", "Japan", 26),
  ("Group of Twenty", "Indonesia", 26),
  ("Group of Twenty", "South Korea", 26),
  ("Group of Twenty", "South Africa", 26),
  ("Organisation for Economic Co-operation and Development", "Germany", 64),
  ("Organisation for Economic Co-operation and Development", "France", 64),
  ("Organisation for Economic Co-operation and Development", "Italy", 64),
  ("Organisation for Economic Co-operation and Development", "Spain", 44),
  ("Organisation for Economic Co-operation and Development", "Poland", 29),
  ("Organisation for Economic Co-operation and Development", "Portugal", 59),
  ("Organisation for Economic Co-operation and Development", "Finland", 55),
  ("Organisation for Economic Co-operation and Development", "United States", 64),
  ("Organisation for Economic Co-operation and Development", "Canada", 64),
  ("Organisation for Economic Co-operation and Development", "Mexico", 30),
  ("Organisation for Economic Co-operation and Development", "Japan", 59),
  ("Organisation for Economic Co-operation and Development", "South Korea", 27),
  ("Organisation for Economic Co-operation and Development", "Chile", 15),
  ("Organisation for Economic Co-operation and Development", "Australia", 50),
  ("Organisation for Economic Co-operation and Development", "New Zealand", 50),
  ("Commonwealth of Nations", "Canada", 89),
  ("Commonwealth of Nations", "Jamaica", 61),
  ("Commonwealth of Nations", "Australia", 89),
  ("Commonwealth of Nations", "New Zealand", 89),
  ("Commonwealth of Nations", "Fiji", 53),
  ("Commonwealth of Nations", "Solomon Islands", 45),
  ("Commonwealth of Nations", "Kiribati", 45),
  ("Commonwealth of Nations", "Samoa", 45),
  ("Pacific Alliance", "Chile", 14),
  ("Pacific Alliance", "Mexico", 14),
  ("Pacific Alliance", "Peru", 14),
  ("Bolivarian Alliance for the Peoples of Our America", "Venezuela", 21),
  ("Bolivarian Alliance for the Peoples of Our America", "Bolivia", 15),
  ("Bolivarian Alliance for the Peoples of Our America", "Cuba", 21),
  ("Community of Latin American and Caribbean States", "Argentina", 15),
  ("Community of Latin American and Caribbean States", "Brazil", 15),
  ("Community of Latin American and Caribbean States", "Chile", 15),
  ("Community of Latin American and Caribbean States", "Peru", 15),
  ("Community of Latin American and Caribbean States", "Ecuador", 15),
  ("Community of Latin American and Caribbean States", "Bolivia", 15),
  ("Community of Latin American and Caribbean States", "Venezuela", 15),
  ("Organization of American States", "United States", 76),
  ("Organization of American States", "Canada", 34),
  ("Organization of American States", "Mexico", 76),
  ("Organization of American States", "Jamaica", 61),
  ("Organization of American States", "Haiti", 76),
  ("Organization of American States", "Panama", 76),
  ("Organization of American States", "Argentina", 76),
  ("Organization of American States", "Brazil", 76),
  ("Organization of American States", "Chile", 76),
  ("Organization of American States", "Peru", 76),
  ("Organization of American States", "Ecuador", 76),
  ("Organization of American States", "Bolivia", 76),
  ("African Union", "Nigeria", 23),
  ("African Union", "Ethiopia", 23),
  ("African Union", "Egypt", 23),
  ("African Union", "South Africa", 23),
  ("African Union", "Kenya", 23),
  ("African Union", "Morocco", 23),
  ("African Union", "Ghana", 23),
  ("Economic Community of West African States", "Nigeria", 50),
  ("Economic Community of West African States", "Ghana", 50),
  ("Southern African Development Community", "South Africa", 31),
  ("East African Community", "Kenya", 25),
  ("Association of Southeast Asian Nations", "Indonesia", 58),
  ("Association of Southeast Asian Nations", "Cambodia", 26),
  ("Association of Southeast Asian Nations", "Vietnam", 30),
  ("Asia-Pacific Economic Cooperation", "United States", 36),
  ("Asia-Pacific Economic Cooperation", "Canada", 36),
  ("Asia-Pacific Economic Cooperation", "Mexico", 30),
  ("Asia-Pacific Economic Cooperation", "Japan", 36),
  ("Asia-Pacific Economic Cooperation", "South Korea", 36),
  ("Asia-Pacific Economic Cooperation", "Indonesia", 36),
  ("Asia-Pacific Economic Cooperation", "Vietnam", 25),
  ("Asia-Pacific Economic Cooperation", "Australia", 36),
  ("Asia-Pacific Economic Cooperation", "New Zealand", 36),
  ("Asia-Pacific Economic Cooperation", "Papua New Guinea", 29),
  ("Shanghai Cooperation Organisation", "China", 24),
  ("Shanghai Cooperation Organisation", "India", 8),
  ("South Asian Association for Regional Cooperation", "India", 40),
  ("Australia New Zealand United States Security Treaty", "Australia", 73),
  ("Australia New Zealand United States Security Treaty", "New Zealand", 73);
-- =====================================
