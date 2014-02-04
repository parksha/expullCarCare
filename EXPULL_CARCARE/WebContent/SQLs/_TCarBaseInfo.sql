/*
 * 1. 테이블 명			: _TCarBaseInfo
 * 2. 테이블 정보 		: 자동차 기본정보
 * 3. 작성자 			: 박성하
 * 4. 작성일 			: 2014.02.04
 * 5. 수정일(들여쓰기)	: 
 * 		1. 
 * 6. 수정내역(들여쓰기) 	:
 * 		1. 
 */
/* 1. 해당 테이블이 있는지 확인하고 있으면 DROP 시킨다. */
DROP TABLE IF EXISTS car._TCarBaseInfo;
/* 2. 해당 테이블이 없는지 확인하고 없으면 CREATE 해준다. */
CREATE TABLE IF NOT EXISTS car._TCarBaseInfo
(
	Manufacturer	NUMERIC(4)	NOT NULL ,	/* 제조사 */
	CarName			NUMERIC(10)	NOT NULL ,	/* 차량명 */
	CarOption		NUMERIC(2)	NOT NULL ,	/* 차량옵션 */
	OilType			NUMERIC(1)	NOT NULL ,	/* 유종 0: 휘발유, 1: 경유, 2: 가스 */
	ProductYear		NUMERIC(4)	NOT NULL ,	/* 제조년 */
	AutoOrManual	NUMERIC(1)	NOT NULL ,	/* 수동/자동 0: 자동 , 1: 수동 */
	WheelType		NUMERIC(1)	NOT NULL ,	/* 2륜/4륜 0: 2륜, 1: 4륜 */
	OfficialFuel	DECIMAL(2,1)NOT NULL 
	
	/* 기본키 여러개 설정할때는 이렇게 해야 함. */
	PRIMARY KEY
	(
		Manufacturer, CarName, 	CarOption, OilType, ProductYear
		AutoOrManual, WheelType
	)
)
;