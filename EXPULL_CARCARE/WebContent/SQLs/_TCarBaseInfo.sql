/*
 * 1. 테이블 명			: _TCarManageInfo
 * 2. 테이블 요약정보  	: 차량관리정보 테이블
 * 3. 작성자				: 박성하
 * 4. 작성일				: 2014.02.04
 * 5. 수정일				
 * 		1. 	2014.02.05
 * 6. 수정자
 * 		1. 	박성하
 * 7. 수정내용 
 * 		1. 	ProductYear 를 ProductYearMonth 로 변경
 * 			데이터 타입들 변경
 */

/* 1. 테이블이 존재하면 DROP 시킨다.  */
DROP TABLE IF EXISTS car._TCarBaseInfo;
/* 2. 테이블을 생성한다.*/
CREATE TABLE IF NOT EXISTS car._TCarBaseInfo
(
	Manufacturer		NVARCHAR(4)	NOT NULL ,	/* 제조사 */
	CarName				NVARCHAR(3)	NOT NULL ,	/* 차량명 */
	CarOption			NVARCHAR(2)	NOT NULL ,	/* 차량옵션 */
	OilType				SMALLINT(1)	NOT NULL ,	/* 유종 0: Gasoline, 1: Diesel, 2: LPG */
	ProductYearMonth	NVARCHAR(6)	NOT NULL ,	/* 제작년월 */
	AutoOrManual		SMALLINT(1)	NOT NULL ,	/* 수동/자동 0: Auto, 1: Manual */
	WheelType			SMALLINT(1)	NOT NULL ,	/* 2륜/4륜 0: 2WD, 1: 4WD */
	
	/* SET PRIMARY KEY */
	PRIMARY KEY
	(
		Manufacturer, CarName, 	CarOption, OilType, ProductYearMonth,
		AutoOrManual, WheelType
	)
	
)
