/*
 * 1. 테이블 명			: _TCarManageInfo
 * 2. 테이블 요약정보  	: 차량관리정보 테이블
 * 3. 작성자				: 박성하
 * 4. 작성일				: 2014.02.05
 * 5. 수정일				
 * 		1. 
 * 6. 수정자
 * 		1. 
 */

/* 1. 테이블이 존재하면 DROP 시킨다.  */
DROP TABLE IF EXISTS car._TCarManageInfo;
/* 2. 테이블을 생성한다.*/
CREATE TABLE IF NOT EXISTS car._TCarManageInfo
(	
	/* 추후 삭제해야 될 컬럼들 시작 */
	Manufacturer		NVARCHAR(4)	NOT NULL ,	/* 제조사 */
	CarName				NVARCHAR(3)	NOT NULL ,	/* 차량명 */
	CarOption			NVARCHAR(2)	NOT NULL ,	/* 차량옵션 */
	OilType				SMALLINT(1)	NOT NULL ,	/* 유종 0: Gasoline, 1: Diesel, 2: LPG */
	ProductYearMonth	NVARCHAR(6)	NOT NULL ,	/* 제작년월 */
	AutoOrManual		SMALLINT(1)	NOT NULL ,	/* 수동/자동 0: Auto, 1: Manual */
	WheelType			SMALLINT(1)	NOT NULL ,	/* 2륜/4륜 0: 2WD, 1: 4WD */
	/* 추후 삭제해야 될 컬럼들 끝  위 7개의 컬럼은 다른 테이블이 생성되면 삭제하도록 한다.
	 * 그때는 CarNumber 만 가지고 PRIMARY KEY 설정하면 된다.
	 */
	CarNumber			VARCHAR(20) NOT NULL ,	/* 차량번호 */
	TotalDistance		NUMERIC(6)	NOT NULL ,	/* 총 주행거리 */
	EstiMileageBefDrive	NUMERIC(4)	NOT NULL ,	/* 주행전 주행가능거리 */
	EstiMileageAftDrive	NUMERIC(4)	NOT NULL ,	/* 주행후 주행가능거리 */
	RefuelAmont			DECIMAL(3,3)		 ,	/* 주유량 */
	RefuelDate			DATE				 ,	/* 주유일자 */
	DrivingDistance		DECIMAL(4,1)		 ,	/* 주행거리 */
	DrivingDate			DATE				 ,	/* 주행일자 */
	
	/* SET PRIMARY KEY */
	PRIMARY KEY
	(
		Manufacturer, CarName, 	CarOption, OilType, ProductYearMonth,
		AutoOrManual, WheelType, CarNumber
	)
	
)

