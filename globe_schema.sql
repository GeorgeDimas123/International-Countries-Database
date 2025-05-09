CREATE DATABASE IF NOT EXISTS globe;
USE globe;

-- CONTINENT table
-- =====================================
CREATE TABLE IF NOT EXISTS CONTINENT(
	Hemisphere CHAR(70) NOT NULL,
    CT_Name CHAR(70) UNIQUE NOT NULL,
    Size_squareMiles INT NOT NULL,
    
    PRIMARY KEY(CT_Name)
);
-- =====================================

-- COUNTRY table
-- =====================================
CREATE TABLE IF NOT EXISTS COUNTRY(
	Number_of_citizens INT NOT NULL,
    C_Name CHAR(70) UNIQUE NOT NULL,
    Dominant_language CHAR(70) NOT NULL,
    C_location CHAR(70) NOT NULL,
    
    PRIMARY KEY(C_Name),
	CONSTRAINT fk_location FOREIGN KEY (C_location) REFERENCES CONTINENT(CT_Name)
);
-- =====================================

-- GOVERNMENT table
-- =====================================
CREATE TABLE IF NOT EXISTS GOVERNMENT(
	Location_of_capital CHAR(70) NOT NULL,
    C_name CHAR(70) NOT NULL,
    Founding_date DATE NOT NULL,
    Leader_name CHAR(70) NOT NULL,
    UNIQUE (Leader_name),

	PRIMARY KEY(C_name, Leader_name),
    FOREIGN KEY(C_name) REFERENCES COUNTRY(C_name) ON UPDATE CASCADE
);
-- =====================================

-- LEADER table (composite attriute from GOVERNMENT table)
-- =====================================
CREATE TABLE IF NOT EXISTS LEADER(
    L_name CHAR(70) NOT NULL,
    Leader_Political_party CHAR(70) NOT NULL,

    PRIMARY KEY(L_name, Leader_Political_party),
    FOREIGN KEY (L_name) REFERENCES GOVERNMENT(Leader_name) ON UPDATE CASCADE
);
-- =====================================

-- ALLIANCE table
-- =====================================
CREATE TABLE IF NOT EXISTS ALLIANCE(
	A_name CHAR(70) NOT NULL,
    founding_date DATE NOT NULL,

	PRIMARY KEY(A_name)
);
-- =====================================

-- ALLIANCE_MEMBER table (multivariable attribute from ALLIANCE table)
CREATE TABLE IF NOT EXISTS ALLIANCE_MEMBER(
	A_name CHAR(70) NOT NULL,
    C_name CHAR(70) NOT NULL,

	PRIMARY KEY(A_name, C_name),
    FOREIGN KEY(C_name) REFERENCES COUNTRY(C_name),
    FOREIGN KEY(A_name) REFERENCES ALLIANCE(A_name)
);

-- ECONOMY table
-- =====================================
CREATE TABLE IF NOT EXISTS ECONOMY(
	C_name CHAR(70) NOT NULL,
    GDP CHAR(20) NOT NULL,
    Dominant_import CHAR(70) NOT NULL,
    Dominant_export CHAR(70) NOT NULL,
    
	PRIMARY KEY(C_name, GDP),
    FOREIGN KEY(C_name) REFERENCES COUNTRY(C_name)
);
-- =====================================

-- relationships
-- =====================================
CREATE TABLE IF NOT EXISTS PART_OF( -- relationship b/w COUNTRY and ALLIANCE
    A_name CHAR(70) NOT NULL,
    C_name CHAR(70) NOT NULL,
    length_of_membership INT NOT NULL, -- measured in years

    PRIMARY KEY(C_name, A_name),
    FOREIGN KEY(C_name) REFERENCES COUNTRY(C_name),
    FOREIGN KEY(A_name) REFERENCES ALLIANCE(A_name)
);
-- =====================================