/*
 * 1. TABLE_NAME		: _TCarBaseInfo
 * 2. TABLE_CHECKSUM 	: Contains essetial Car infomation
 * 3. AUTHORS			: PARK, SUNG HA
 * 4. DATE OF CREATION  : 2014.02.04
 * 5. DATE OF MODIFICATION (USE INDENT)
 * 		1. 
 * 6. AMENDER (USE INDENT)
 * 		1. 
 */
/* 1. If a table want to create exists, drop it first.  */
DROP TABLE IF EXISTS car._TCarBaseInfo;
/* 2. Create a table*/
CREATE TABLE IF NOT EXISTS car._TCarBaseInfo
(
	Manufacturer	NUMERIC(4)	NOT NULL ,	
	CarName			NUMERIC(10)	NOT NULL ,	
	CarOption		NUMERIC(2)	NOT NULL ,	
	OilType			NUMERIC(1)	NOT NULL ,	/* 0: Gasoline, 1: Diesel, 2: LPG */
	ProductYear		NUMERIC(4)	NOT NULL ,	
	AutoOrManual	NUMERIC(1)	NOT NULL ,	/* 0: Auto, 1: Manual */
	WheelType		NUMERIC(1)	NOT NULL ,	/* 0: 2WD, 1: 4WD */
	OfficialFuel	DECIMAL(2,1)NOT NULL ,
	
	/* SET PRIMARY KEY */
	PRIMARY KEY
	(
		Manufacturer, CarName, 	CarOption, OilType, ProductYear,
		AutoOrManual, WheelType
	)
	
)
