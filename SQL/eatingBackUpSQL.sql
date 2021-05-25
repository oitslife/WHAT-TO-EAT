--이하는 admin권환으로 스크립트 실행한다.
--시스템 계정에서 실행한다.
DROP USER c##EATING CASCADE;
DROP USER c##EATING CASCADE;
CREATE USER c##EATING IDENTIFIED BY EATING1234;

GRANT CONNECT, RESOURCE TO c##EATING;
GRANT CREATE VIEW, CREATE SYNONYM TO c##EATING;
GRANT UNLIMITED TABLESPACE TO c##EATING;
--락 걸린 걸 푸는 것
ALTER USER c##EATING ACCOUNT UNLOCK; 
--여기서부터는 마당 계정으로 접속 앞에는 아이디 뒤에는 비밀번호
conn c##EATING/EATING1234;



--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-01-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_BNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."BOARD_BNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence BOARD_CATEGORY_CID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."BOARD_CATEGORY_CID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence BOARD_UPLOAD_FILE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."BOARD_UPLOAD_FILE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence BOARD_UPLOAD_FILE_SQL
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."BOARD_UPLOAD_FILE_SQL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CART_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."CART_ID_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MATERIAL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."MATERIAL_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MATERIAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."MATERIAL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."MEMBER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."NO_SEQ"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RBOARD_RNUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."RBOARD_RNUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RECIPE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."RECIPE_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RECIPE_LIKE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."RECIPE_LIKE_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence STEP_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."STEP_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence STEP_SEQUENCE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##EATING"."STEP_SEQUENCE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "C##EATING"."BOARD" 
   (	"BNUM" NUMBER(10,0), 
	"BCATEGORY" NUMBER(10,0), 
	"BTITLE" VARCHAR2(150), 
	"BID" VARCHAR2(40), 
	"BNICKNAME" VARCHAR2(30), 
	"BCDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"BUDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"BHIT" NUMBER(5,0) DEFAULT 0, 
	"BCONTENT" CLOB, 
	"BGROUP" NUMBER(5,0), 
	"BSTEP" NUMBER(5,0), 
	"BINDENT" NUMBER(5,0), 
	"COL1" VARCHAR2(30), 
	"COL2" VARCHAR2(30), 
	"COL3" VARCHAR2(30)
   ) ;

   COMMENT ON COLUMN "C##EATING"."BOARD"."BNUM" IS '게시글번호';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BCATEGORY" IS '분류카테고리';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BTITLE" IS '제목';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BID" IS '작성자ID';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BNICKNAME" IS '별칭';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BCDATE" IS '작성일';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BUDATE" IS '수정일';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BHIT" IS '조회수';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BCONTENT" IS '본문내용';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BGROUP" IS '답글그룹';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BSTEP" IS '답변글의 단계';
   COMMENT ON COLUMN "C##EATING"."BOARD"."BINDENT" IS '답변글의 들여쓰기';
   COMMENT ON COLUMN "C##EATING"."BOARD"."COL1" IS '임시1';
   COMMENT ON COLUMN "C##EATING"."BOARD"."COL2" IS '임시2';
   COMMENT ON COLUMN "C##EATING"."BOARD"."COL3" IS '임시3';
--------------------------------------------------------
--  DDL for Table BOARD_CATEGORY
--------------------------------------------------------

  CREATE TABLE "C##EATING"."BOARD_CATEGORY" 
   (	"CID" NUMBER(10,0), 
	"CNAME" VARCHAR2(60), 
	"USER_YN" CHAR(1), 
	"USE_YN" CHAR(1)
   ) ;

   COMMENT ON COLUMN "C##EATING"."BOARD_CATEGORY"."CID" IS '분류코드';
   COMMENT ON COLUMN "C##EATING"."BOARD_CATEGORY"."CNAME" IS '분류명';
--------------------------------------------------------
--  DDL for Table BOARD_UPLOAD_FILE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."BOARD_UPLOAD_FILE" 
   (	"FID" NUMBER(10,0), 
	"BNUM" NUMBER(10,0), 
	"FNAME" VARCHAR2(150), 
	"FSIZE" VARCHAR2(45), 
	"FTYPE" VARCHAR2(100), 
	"FDATA" BLOB, 
	"CDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"UDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."FID" IS '파일아이디';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."BNUM" IS '게시글번호';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."FNAME" IS '파일명';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."FSIZE" IS '파일크기';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."FTYPE" IS '파일유형';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."FDATA" IS '첨부파일';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."CDATE" IS '작성일';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."UDATE" IS '수정일';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."COLUMN1" IS '임시1';
   COMMENT ON COLUMN "C##EATING"."BOARD_UPLOAD_FILE"."COLUMN2" IS '임시2';
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "C##EATING"."CART" 
   (	"CART_ID" VARCHAR2(40), 
	"ITEM_ITEM_ID" VARCHAR2(40), 
	"ITEM_QUANTITY" NUMBER(*,0), 
	"SUM_PRICE" CHAR(10), 
	"MEMBER_USER_ID" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table CODE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."CODE" 
   (	"CODE_ID" CHAR(4), 
	"NAME" VARCHAR2(40), 
	"USE_YN" CHAR(1), 
	"CODETYPE_ID" CHAR(4)
   ) ;
--------------------------------------------------------
--  DDL for Table CODETYPE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."CODETYPE" 
   (	"CODETYPE_ID" CHAR(4), 
	"NAME" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "C##EATING"."ITEM" 
   (	"ITEM_ID" VARCHAR2(40), 
	"ITEM_NAME" VARCHAR2(50), 
	"ITEM_CONTENTS" CLOB, 
	"ITEM_PRICE" NUMBER(10,0), 
	"ITEM_STOCK" NUMBER(10,0), 
	"ITEM_C_DATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"ITEM_U_DATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"ITEM_VIEW_COUNT" NUMBER(10,0), 
	"ITEM_SELL_COUNT" NUMBER(10,0), 
	"ITEM_REVIEW_COUNT" NUMBER(10,0), 
	"ITEM_REVIEW_AVERAGE" NUMBER(10,0), 
	"ITEM_UNIT" VARCHAR2(60), 
	"ITEM_WEIGHT" VARCHAR2(60), 
	"ITEM_DELIVERY" VARCHAR2(60), 
	"ITEM_PACKAGE" VARCHAR2(60), 
	"ITEM_MENTION" VARCHAR2(60), 
	"ITEM_COUNTRY" VARCHAR2(60), 
	"ITEM_FILE" BLOB, 
	"ITEM_FSIZE" VARCHAR2(50), 
	"ITEM_FTYPE" VARCHAR2(50), 
	"ITEM_FNAME" VARCHAR2(50), 
	"ITEM_PHOTO" BLOB
   ) ;

   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_ID" IS 'id값 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_NAME" IS '이름 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_CONTENTS" IS '물품 간단한 설명 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_PRICE" IS '가격 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_STOCK" IS '재고 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_C_DATE" IS '생성 날짜 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_U_DATE" IS '수정날짜 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_VIEW_COUNT" IS '조회수 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_SELL_COUNT" IS '판매량 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_REVIEW_COUNT" IS '리뷰 카운트 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_REVIEW_AVERAGE" IS '리뷰 평균 점수 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_UNIT" IS '판매 단위 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_WEIGHT" IS '중량 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_DELIVERY" IS '배송 구분 택배배송/새벽 배송 등 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_PACKAGE" IS '포장 타입 냉동/종이포장 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_MENTION" IS '안내 사항 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_COUNTRY" IS '원산지 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_FILE" IS ' ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_FSIZE" IS '사진 사이즈 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_FTYPE" IS '사진 타입 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_FNAME" IS '사진 이름 ';
   COMMENT ON COLUMN "C##EATING"."ITEM"."ITEM_PHOTO" IS '사진 ';
--------------------------------------------------------
--  DDL for Table MATERIAL
--------------------------------------------------------

  CREATE TABLE "C##EATING"."MATERIAL" 
   (	"MATERIAL_ID" VARCHAR2(40), 
	"MATERIAL_TITLE" VARCHAR2(40), 
	"MATERIAL_CONTENTS" CLOB, 
	"RECIPE_RECIPE_ID" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "C##EATING"."MEMBER" 
   (	"USER_ID" VARCHAR2(40), 
	"USER_PW" VARCHAR2(30), 
	"USER_TEL" VARCHAR2(13), 
	"USER_SEQ" VARCHAR2(40), 
	"USER_NICKNAME" VARCHAR2(50), 
	"USER_GENDER" CHAR(6), 
	"USER_ADDRESS" CLOB, 
	"USER_BIRTH" DATE, 
	"USER_CDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"USER_UDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"USER_FILE" BLOB, 
	"USER_FSIZE" VARCHAR2(50), 
	"USER_FTYPE" VARCHAR2(50), 
	"USER_FNAME" VARCHAR2(50), 
	"USER_PHOTO" BLOB, 
	"USER_CONTENTS" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "C##EATING"."ORDERS" 
   (	"MEMBER_USER_ID" VARCHAR2(40), 
	"ORDER_ID" VARCHAR2(40), 
	"ORDER_DATE" DATE DEFAULT systimestamp, 
	"TOTAL_PRICE" NUMBER(*,0), 
	"ORDER_STATE" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDER_DETAIL
--------------------------------------------------------

  CREATE TABLE "C##EATING"."ORDER_DETAIL" 
   (	"ORDER_ORDER_ID" VARCHAR2(40), 
	"ORDER_DETAIL_ID" VARCHAR2(40), 
	"ITEM_ITEM_ID" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table RBOARD
--------------------------------------------------------

  CREATE TABLE "C##EATING"."RBOARD" 
   (	"RNUM" NUMBER(10,0), 
	"BNUM" NUMBER(10,0), 
	"RID" VARCHAR2(40), 
	"RNICKNAME" VARCHAR2(30), 
	"RCDATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"RUDATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"RCONTENT" CLOB, 
	"RGOOD" NUMBER(5,0), 
	"RBAD" NUMBER(5,0), 
	"RGROUP" NUMBER(5,0), 
	"RSTEP" NUMBER(5,0), 
	"RINDENT" NUMBER(5,0), 
	"PRNUM" NUMBER(10,0), 
	"PRID" VARCHAR2(40), 
	"PRNICKNAME" VARCHAR2(30), 
	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20), 
	"COLUMN3" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "C##EATING"."RBOARD"."RNUM" IS '댓글번호';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."BNUM" IS '최초원글';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RID" IS '댓글작성자ID';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RNICKNAME" IS '댓글작성자별칭';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RCDATE" IS '작성일시';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RUDATE" IS '수정일시';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RCONTENT" IS '댓글본문내용';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RGOOD" IS '선호';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RBAD" IS '비선호';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RGROUP" IS '댓글그룹';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RSTEP" IS '댓글 단계';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."RINDENT" IS '댓글 들여쓰기';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."PRNUM" IS '부모댓글번호';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."PRID" IS '부모댓글아이디';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."PRNICKNAME" IS '부대댓글작성자(별칭)';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."COLUMN1" IS '임시1';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."COLUMN2" IS '임시2';
   COMMENT ON COLUMN "C##EATING"."RBOARD"."COLUMN3" IS '임시3';
--------------------------------------------------------
--  DDL for Table RBOARD_VOTE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."RBOARD_VOTE" 
   (	"RNUM" NUMBER(10,0), 
	"BNUM" NUMBER(10,0), 
	"RID" VARCHAR2(40), 
	"VOTE" VARCHAR2(10), 
	"CDATE" DATE DEFAULT SYSTIMESTAMP, 
	"UDATE" DATE DEFAULT SYSTIMESTAMP, 
	"COLUMN1" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "C##EATING"."RBOARD_VOTE"."RNUM" IS '댓글번호';
   COMMENT ON COLUMN "C##EATING"."RBOARD_VOTE"."BNUM" IS '최초원글';
   COMMENT ON COLUMN "C##EATING"."RBOARD_VOTE"."RID" IS '댓글아이디';
   COMMENT ON COLUMN "C##EATING"."RBOARD_VOTE"."VOTE" IS 'GOOD:호감''BAD'':비호감';
   COMMENT ON COLUMN "C##EATING"."RBOARD_VOTE"."CDATE" IS '투표일시';
   COMMENT ON COLUMN "C##EATING"."RBOARD_VOTE"."UDATE" IS '투표일시';
   COMMENT ON COLUMN "C##EATING"."RBOARD_VOTE"."COLUMN1" IS '임시1';
--------------------------------------------------------
--  DDL for Table RECIPE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."RECIPE" 
   (	"RECIPE_ID" VARCHAR2(40), 
	"MEMBER_USER_ID" VARCHAR2(40), 
	"RECIPE_NAME" VARCHAR2(40), 
	"RECIPE_CONTENTS" CLOB, 
	"RECIPE_VIEW_COUNT" NUMBER(*,0), 
	"RECIPE_LIKE_COUNT" NUMBER(*,0), 
	"RECIPE_C_DATE" DATE DEFAULT systimestamp, 
	"RECIPE_U_DATE" DATE DEFAULT systimestamp, 
	"RECIPE_CATEGORY" VARCHAR2(50), 
	"RECIPE_WHAT_SITUATION" VARCHAR2(50), 
	"RECIPE_METHOD" VARCHAR2(50), 
	"RECIPE_MATERIAL" VARCHAR2(50), 
	"RECIPE_HOW_MANY" VARCHAR2(50), 
	"RECIPE_HOW_LONG" VARCHAR2(50), 
	"RECIPE_DIFFICULTY" VARCHAR2(50), 
	"RECIPE_TAG" VARCHAR2(200), 
	"RECIPE_PICTURE" BLOB
   ) ;
--------------------------------------------------------
--  DDL for Table RECIPE_LIKE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."RECIPE_LIKE" 
   (	"RECIPE_LIKE_ID" VARCHAR2(45), 
	"RECIPE_RECIPE_ID" VARCHAR2(45), 
	"MEMBER_USER_ID" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table RECIPE_RBOARD
--------------------------------------------------------

  CREATE TABLE "C##EATING"."RECIPE_RBOARD" 
   (	"RNUM" NUMBER(10,0), 
	"RECIPENUM" VARCHAR2(40), 
	"MEMBERID" VARCHAR2(40), 
	"RNICKNAME" VARCHAR2(30), 
	"RCDATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"RUDATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"RCONTENT" CLOB, 
	"RGOOD" NUMBER(5,0), 
	"RBAD" NUMBER(5,0), 
	"RGROUP" NUMBER(5,0), 
	"RSTEP" NUMBER(5,0), 
	"RINDENT" NUMBER(5,0), 
	"PRNUM" NUMBER(10,0), 
	"PRID" VARCHAR2(40), 
	"PRNICKNAME" VARCHAR2(30), 
	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20), 
	"COLUMN3" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RNUM" IS '댓글번호';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RECIPENUM" IS '최초원글';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."MEMBERID" IS '댓글작성자ID';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RNICKNAME" IS '댓글작성자별칭';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RCDATE" IS '작성일시';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RUDATE" IS '수정일시';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RCONTENT" IS '댓글본문내용';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RGOOD" IS '선호';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RBAD" IS '비선호';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RGROUP" IS '댓글그룹';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RSTEP" IS '댓글 단계';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."RINDENT" IS '댓글 들여쓰기';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."PRNUM" IS '부모댓글번호';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."PRID" IS '부모댓글아이디';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."PRNICKNAME" IS '부대댓글작성자(별칭)';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."COLUMN1" IS '임시1';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."COLUMN2" IS '임시2';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD"."COLUMN3" IS '임시3';
--------------------------------------------------------
--  DDL for Table RECIPE_RBOARD_VOTE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."RECIPE_RBOARD_VOTE" 
   (	"RNUM" NUMBER(10,0), 
	"RECIPENUM" NUMBER(10,0), 
	"MEMBERID" VARCHAR2(40), 
	"VOTE" VARCHAR2(10), 
	"CDATE" DATE DEFAULT SYSTIMESTAMP, 
	"UDATE" DATE DEFAULT SYSTIMESTAMP, 
	"COLUMN1" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD_VOTE"."RNUM" IS '댓글번호';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD_VOTE"."RECIPENUM" IS '최초원글';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD_VOTE"."MEMBERID" IS '댓글아이디';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD_VOTE"."VOTE" IS 'GOOD:호감''BAD'':비호감';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD_VOTE"."CDATE" IS '투표일시';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD_VOTE"."UDATE" IS '투표일시';
   COMMENT ON COLUMN "C##EATING"."RECIPE_RBOARD_VOTE"."COLUMN1" IS '임시1';
--------------------------------------------------------
--  DDL for Table STEP
--------------------------------------------------------

  CREATE TABLE "C##EATING"."STEP" 
   (	"STEP_ID" VARCHAR2(40), 
	"STEP_SEQUENCE" CHAR(4), 
	"STEP_CONTENTS" CLOB, 
	"STEP_PICTURE" BLOB, 
	"RECIPE_RECIPE_ID" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table TIMELINE
--------------------------------------------------------

  CREATE TABLE "C##EATING"."TIMELINE" 
   (	"TIMELINE_ID" NUMBER(*,0), 
	"MEMBER_USER_ID" VARCHAR2(40)
   ) ;
REM INSERTING into C##EATING.BOARD
SET DEFINE OFF;
REM INSERTING into C##EATING.BOARD_CATEGORY
SET DEFINE OFF;
Insert into C##EATING.BOARD_CATEGORY (CID,CNAME,USER_YN,USE_YN) values (1000,'레시피 공유게시판',null,'y');
Insert into C##EATING.BOARD_CATEGORY (CID,CNAME,USER_YN,USE_YN) values (1010,'재료게시판',null,'y');
Insert into C##EATING.BOARD_CATEGORY (CID,CNAME,USER_YN,USE_YN) values (1020,'자유게시판',null,'y');
Insert into C##EATING.BOARD_CATEGORY (CID,CNAME,USER_YN,USE_YN) values (1030,'자랑게시판',null,'y');
REM INSERTING into C##EATING.BOARD_UPLOAD_FILE
SET DEFINE OFF;
REM INSERTING into C##EATING.CART
SET DEFINE OFF;
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_001','item_001',11,'110,000   ','test1@test.com');
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_002','item_002',3,'24,000    ','test1@test.com');
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_003','item_003',5,'50,000    ','test1@test.com');
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_004','item_005',5,'85,000    ','test2@test.com');
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_005','item_006',5,'49,000    ','test2@test.com');
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_006','item_001',10,'80,000    ','test2@test.com');
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_007','item_002',11,'88,000    ','test3@test.com');
Insert into C##EATING.CART (CART_ID,ITEM_ITEM_ID,ITEM_QUANTITY,SUM_PRICE,MEMBER_USER_ID) values ('cart_008','item_005',10,'170,000   ','test3@test.com');
REM INSERTING into C##EATING.CODE
SET DEFINE OFF;
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('1   ','밑반찬','y','1000');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('2   ','밑반찬','y','1000');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('3   ','면','y','1000');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('4   ','야식','y','1010');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('5   ','간식','y','1010');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('6   ','볶음','y','1020');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('7   ','튀김','y','1020');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('8   ','소고기','y','1030');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('9   ','야채','y','1030');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('10  ','1인분','y','1040');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('11  ','2인분','y','1040');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('12  ','10분','y','1050');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('13  ','30분','y','1050');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('14  ','초보자','y','1060');
Insert into C##EATING.CODE (CODE_ID,NAME,USE_YN,CODETYPE_ID) values ('15  ','중급자','y','1060');
REM INSERTING into C##EATING.CODETYPE
SET DEFINE OFF;
Insert into C##EATING.CODETYPE (CODETYPE_ID,NAME) values ('1000','종류별');
Insert into C##EATING.CODETYPE (CODETYPE_ID,NAME) values ('1010','상황별');
Insert into C##EATING.CODETYPE (CODETYPE_ID,NAME) values ('1020','방법별');
Insert into C##EATING.CODETYPE (CODETYPE_ID,NAME) values ('1030','재료별');
Insert into C##EATING.CODETYPE (CODETYPE_ID,NAME) values ('1040','인원');
Insert into C##EATING.CODETYPE (CODETYPE_ID,NAME) values ('1050','시간');
Insert into C##EATING.CODETYPE (CODETYPE_ID,NAME) values ('1060','난이도');
REM INSERTING into C##EATING.ITEM
SET DEFINE OFF;
Insert into C##EATING.ITEM (ITEM_ID,ITEM_NAME,ITEM_PRICE,ITEM_STOCK,ITEM_C_DATE,ITEM_U_DATE,ITEM_VIEW_COUNT,ITEM_SELL_COUNT,ITEM_REVIEW_COUNT,ITEM_REVIEW_AVERAGE,ITEM_UNIT,ITEM_WEIGHT,ITEM_DELIVERY,ITEM_PACKAGE,ITEM_MENTION,ITEM_COUNTRY,ITEM_FSIZE,ITEM_FTYPE,ITEM_FNAME) values ('item_001','김치찌개',8000,100,to_timestamp('20/07/15 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/10/11 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),1050,50,280,5,null,null,null,null,null,null,null,null,null);
Insert into C##EATING.ITEM (ITEM_ID,ITEM_NAME,ITEM_PRICE,ITEM_STOCK,ITEM_C_DATE,ITEM_U_DATE,ITEM_VIEW_COUNT,ITEM_SELL_COUNT,ITEM_REVIEW_COUNT,ITEM_REVIEW_AVERAGE,ITEM_UNIT,ITEM_WEIGHT,ITEM_DELIVERY,ITEM_PACKAGE,ITEM_MENTION,ITEM_COUNTRY,ITEM_FSIZE,ITEM_FTYPE,ITEM_FNAME) values ('item_002','된장찌개',8000,100,to_timestamp('20/06/10 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/11/15 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),900,70,150,4,null,null,null,null,null,null,null,null,null);
Insert into C##EATING.ITEM (ITEM_ID,ITEM_NAME,ITEM_PRICE,ITEM_STOCK,ITEM_C_DATE,ITEM_U_DATE,ITEM_VIEW_COUNT,ITEM_SELL_COUNT,ITEM_REVIEW_COUNT,ITEM_REVIEW_AVERAGE,ITEM_UNIT,ITEM_WEIGHT,ITEM_DELIVERY,ITEM_PACKAGE,ITEM_MENTION,ITEM_COUNTRY,ITEM_FSIZE,ITEM_FTYPE,ITEM_FNAME) values ('item_003','설렁탕',10000,100,to_timestamp('20/11/15 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/05 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),350,85,50,3,null,null,null,null,null,null,null,null,null);
Insert into C##EATING.ITEM (ITEM_ID,ITEM_NAME,ITEM_PRICE,ITEM_STOCK,ITEM_C_DATE,ITEM_U_DATE,ITEM_VIEW_COUNT,ITEM_SELL_COUNT,ITEM_REVIEW_COUNT,ITEM_REVIEW_AVERAGE,ITEM_UNIT,ITEM_WEIGHT,ITEM_DELIVERY,ITEM_PACKAGE,ITEM_MENTION,ITEM_COUNTRY,ITEM_FSIZE,ITEM_FTYPE,ITEM_FNAME) values ('item_004','핫도그',3500,200,to_timestamp('20/10/30 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/11/30 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),100,87,100,4,null,null,null,null,null,null,null,null,null);
Insert into C##EATING.ITEM (ITEM_ID,ITEM_NAME,ITEM_PRICE,ITEM_STOCK,ITEM_C_DATE,ITEM_U_DATE,ITEM_VIEW_COUNT,ITEM_SELL_COUNT,ITEM_REVIEW_COUNT,ITEM_REVIEW_AVERAGE,ITEM_UNIT,ITEM_WEIGHT,ITEM_DELIVERY,ITEM_PACKAGE,ITEM_MENTION,ITEM_COUNTRY,ITEM_FSIZE,ITEM_FTYPE,ITEM_FNAME) values ('item_005','왕갈비',17000,150,to_timestamp('21/01/28 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/02/08 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),250,50,70,4,null,null,null,null,null,null,null,null,null);
Insert into C##EATING.ITEM (ITEM_ID,ITEM_NAME,ITEM_PRICE,ITEM_STOCK,ITEM_C_DATE,ITEM_U_DATE,ITEM_VIEW_COUNT,ITEM_SELL_COUNT,ITEM_REVIEW_COUNT,ITEM_REVIEW_AVERAGE,ITEM_UNIT,ITEM_WEIGHT,ITEM_DELIVERY,ITEM_PACKAGE,ITEM_MENTION,ITEM_COUNTRY,ITEM_FSIZE,ITEM_FTYPE,ITEM_FNAME) values ('item_006','김치',7000,300,to_timestamp('20/07/18 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/08/07 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),1200,100,350,5,null,null,null,null,null,null,null,null,null);
REM INSERTING into C##EATING.MATERIAL
SET DEFINE OFF;
Insert into C##EATING.MATERIAL (MATERIAL_ID,MATERIAL_TITLE,RECIPE_RECIPE_ID) values ('MATERIAL_43','dd','RECIPE_87');
Insert into C##EATING.MATERIAL (MATERIAL_ID,MATERIAL_TITLE,RECIPE_RECIPE_ID) values ('MATERIAL_45','밀가루','RECIPE_89');
Insert into C##EATING.MATERIAL (MATERIAL_ID,MATERIAL_TITLE,RECIPE_RECIPE_ID) values ('MATERIAL_46','설탕','RECIPE_89');
Insert into C##EATING.MATERIAL (MATERIAL_ID,MATERIAL_TITLE,RECIPE_RECIPE_ID) values ('MATERIAL_47','계란','RECIPE_89');
Insert into C##EATING.MATERIAL (MATERIAL_ID,MATERIAL_TITLE,RECIPE_RECIPE_ID) values ('MATERIAL_48','소금','RECIPE_89');
Insert into C##EATING.MATERIAL (MATERIAL_ID,MATERIAL_TITLE,RECIPE_RECIPE_ID) values ('MATERIAL_44','af','RECIPE_88');
REM INSERTING into C##EATING.MEMBER
SET DEFINE OFF;
Insert into C##EATING.MEMBER (USER_ID,USER_PW,USER_TEL,USER_SEQ,USER_NICKNAME,USER_GENDER,USER_BIRTH,USER_CDATE,USER_UDATE,USER_FSIZE,USER_FTYPE,USER_FNAME) values ('test1@test.com','cook1234','010-5678-9876','1','요알못','여   ',to_date('90/03/03','RR/MM/DD'),to_timestamp('20/08/08 20:10:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/09/09 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
Insert into C##EATING.MEMBER (USER_ID,USER_PW,USER_TEL,USER_SEQ,USER_NICKNAME,USER_GENDER,USER_BIRTH,USER_CDATE,USER_UDATE,USER_FSIZE,USER_FTYPE,USER_FNAME) values ('test2@test.com','chef!@34','010-3210-4567','2','일류주방장','남   ',to_date('58/08/15','RR/MM/DD'),to_timestamp('19/12/31 20:33:55.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('20/03/05 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
Insert into C##EATING.MEMBER (USER_ID,USER_PW,USER_TEL,USER_SEQ,USER_NICKNAME,USER_GENDER,USER_BIRTH,USER_CDATE,USER_UDATE,USER_FSIZE,USER_FTYPE,USER_FNAME) values ('test3@test.com','alongdark','010-3210-4567','3','먹는게 남는거','여   ',to_date('80/06/06','RR/MM/DD'),to_timestamp('21/01/01 15:45:12.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/20 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
REM INSERTING into C##EATING.ORDERS
SET DEFINE OFF;
REM INSERTING into C##EATING.ORDER_DETAIL
SET DEFINE OFF;
REM INSERTING into C##EATING.RBOARD
SET DEFINE OFF;
REM INSERTING into C##EATING.RBOARD_VOTE
SET DEFINE OFF;
REM INSERTING into C##EATING.RECIPE
SET DEFINE OFF;
Insert into C##EATING.RECIPE (RECIPE_ID,MEMBER_USER_ID,RECIPE_NAME,RECIPE_VIEW_COUNT,RECIPE_LIKE_COUNT,RECIPE_C_DATE,RECIPE_U_DATE,RECIPE_CATEGORY,RECIPE_WHAT_SITUATION,RECIPE_METHOD,RECIPE_MATERIAL,RECIPE_HOW_MANY,RECIPE_HOW_LONG,RECIPE_DIFFICULTY,RECIPE_TAG) values ('RECIPE_87','test1@test.com','asfasf',null,null,to_date('21/03/30','RR/MM/DD'),to_date('21/03/30','RR/MM/DD'),'2   ','4   ','6   ','8   ','10  ','12  ','14  ',null);
Insert into C##EATING.RECIPE (RECIPE_ID,MEMBER_USER_ID,RECIPE_NAME,RECIPE_VIEW_COUNT,RECIPE_LIKE_COUNT,RECIPE_C_DATE,RECIPE_U_DATE,RECIPE_CATEGORY,RECIPE_WHAT_SITUATION,RECIPE_METHOD,RECIPE_MATERIAL,RECIPE_HOW_MANY,RECIPE_HOW_LONG,RECIPE_DIFFICULTY,RECIPE_TAG) values ('RECIPE_89','test1@test.com','빵',null,null,to_date('21/03/31','RR/MM/DD'),to_date('21/03/31','RR/MM/DD'),null,null,null,null,'10  ','13  ','15  ',null);
Insert into C##EATING.RECIPE (RECIPE_ID,MEMBER_USER_ID,RECIPE_NAME,RECIPE_VIEW_COUNT,RECIPE_LIKE_COUNT,RECIPE_C_DATE,RECIPE_U_DATE,RECIPE_CATEGORY,RECIPE_WHAT_SITUATION,RECIPE_METHOD,RECIPE_MATERIAL,RECIPE_HOW_MANY,RECIPE_HOW_LONG,RECIPE_DIFFICULTY,RECIPE_TAG) values ('RECIPE_88','test1@test.com','afsa',null,null,to_date('21/03/30','RR/MM/DD'),to_date('21/03/30','RR/MM/DD'),null,null,null,null,null,null,null,null);
REM INSERTING into C##EATING.RECIPE_LIKE
SET DEFINE OFF;
REM INSERTING into C##EATING.RECIPE_RBOARD
SET DEFINE OFF;
Insert into C##EATING.RECIPE_RBOARD (RNUM,RECIPENUM,MEMBERID,RNICKNAME,RCDATE,RUDATE,RGOOD,RBAD,RGROUP,RSTEP,RINDENT,PRNUM,PRID,PRNICKNAME,COLUMN1,COLUMN2,COLUMN3) values (1,'RECIPE_89','test1@test.com','요알못',to_timestamp('21/03/31 12:52:25.807000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/31 12:52:25.807000000','RR/MM/DD HH24:MI:SSXFF'),null,null,1,0,0,null,null,null,null,null,null);
REM INSERTING into C##EATING.RECIPE_RBOARD_VOTE
SET DEFINE OFF;
REM INSERTING into C##EATING.STEP
SET DEFINE OFF;
Insert into C##EATING.STEP (STEP_ID,STEP_SEQUENCE,RECIPE_RECIPE_ID) values ('STEP_43','43  ','RECIPE_87');
Insert into C##EATING.STEP (STEP_ID,STEP_SEQUENCE,RECIPE_RECIPE_ID) values ('STEP_45','45  ','RECIPE_89');
Insert into C##EATING.STEP (STEP_ID,STEP_SEQUENCE,RECIPE_RECIPE_ID) values ('STEP_46','46  ','RECIPE_89');
Insert into C##EATING.STEP (STEP_ID,STEP_SEQUENCE,RECIPE_RECIPE_ID) values ('STEP_47','47  ','RECIPE_89');
Insert into C##EATING.STEP (STEP_ID,STEP_SEQUENCE,RECIPE_RECIPE_ID) values ('STEP_44','44  ','RECIPE_88');
REM INSERTING into C##EATING.TIMELINE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index BOARD_UPLOADE_FILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."BOARD_UPLOADE_FILE_PK" ON "C##EATING"."BOARD_UPLOAD_FILE" ("FID") 
  ;
--------------------------------------------------------
--  DDL for Index RECIPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."RECIPE_PK" ON "C##EATING"."RECIPE" ("RECIPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MATERIAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."MATERIAL_PK" ON "C##EATING"."MATERIAL" ("MATERIAL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RECIPE_RBOARD_VOTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."RECIPE_RBOARD_VOTE_PK" ON "C##EATING"."RECIPE_RBOARD_VOTE" ("RNUM", "RECIPENUM", "MEMBERID") 
  ;
--------------------------------------------------------
--  DDL for Index ITEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."ITEM_PK" ON "C##EATING"."ITEM" ("ITEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index STEP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."STEP_PK" ON "C##EATING"."STEP" ("STEP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."BOARD_PK" ON "C##EATING"."BOARD" ("BNUM") 
  ;
--------------------------------------------------------
--  DDL for Index CODETYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."CODETYPE_PK" ON "C##EATING"."CODETYPE" ("CODETYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TIMELINE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."TIMELINE_PK" ON "C##EATING"."TIMELINE" ("TIMELINE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOARD_CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."BOARD_CATEGORY_PK" ON "C##EATING"."BOARD_CATEGORY" ("CID") 
  ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."MEMBER_PK" ON "C##EATING"."MEMBER" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TIMELINE__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."TIMELINE__IDX" ON "C##EATING"."TIMELINE" ("MEMBER_USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."CART_PK" ON "C##EATING"."CART" ("CART_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RECIPE_LIKE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."RECIPE_LIKE_PK" ON "C##EATING"."RECIPE_LIKE" ("RECIPE_LIKE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."CODE_PK" ON "C##EATING"."CODE" ("CODE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RBOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."RBOARD_PK" ON "C##EATING"."RECIPE_RBOARD" ("RNUM") 
  ;
--------------------------------------------------------
--  DDL for Index ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."ORDER_PK" ON "C##EATING"."ORDERS" ("ORDER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RBOARD_VOTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##EATING"."RBOARD_VOTE_PK" ON "C##EATING"."RBOARD_VOTE" ("RNUM", "BNUM", "RID") 
  ;
--------------------------------------------------------
--  Constraints for Table CODE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."CODE" MODIFY ("CODE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."CODE" MODIFY ("CODETYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."CODE" ADD CONSTRAINT "CODE_PK" PRIMARY KEY ("CODE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECIPE_LIKE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE_LIKE" MODIFY ("RECIPE_LIKE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_LIKE" MODIFY ("RECIPE_RECIPE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_LIKE" MODIFY ("MEMBER_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_LIKE" ADD CONSTRAINT "RECIPE_LIKE_PK" PRIMARY KEY ("RECIPE_LIKE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE "C##EATING"."ORDER_DETAIL" MODIFY ("ORDER_ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."ORDER_DETAIL" MODIFY ("ITEM_ITEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECIPE_RBOARD
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE_RBOARD" ADD CONSTRAINT "RBOARD_PK" PRIMARY KEY ("RNUM")
  USING INDEX  ENABLE;
  ALTER TABLE "C##EATING"."RECIPE_RBOARD" MODIFY ("RNUM" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD" MODIFY ("RECIPENUM" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD" MODIFY ("MEMBERID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD" MODIFY ("RCDATE" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD" MODIFY ("RCONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD_UPLOAD_FILE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."BOARD_UPLOAD_FILE" ADD CONSTRAINT "BOARD_UPLOADE_FILE_PK" PRIMARY KEY ("FID")
  USING INDEX  ENABLE;
  ALTER TABLE "C##EATING"."BOARD_UPLOAD_FILE" MODIFY ("FID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "C##EATING"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("BNUM")
  USING INDEX  ENABLE;
  ALTER TABLE "C##EATING"."BOARD" MODIFY ("BNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "C##EATING"."CART" MODIFY ("CART_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."CART" MODIFY ("ITEM_ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."CART" MODIFY ("MEMBER_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("CART_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIMELINE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."TIMELINE" MODIFY ("TIMELINE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."TIMELINE" MODIFY ("MEMBER_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."TIMELINE" ADD CONSTRAINT "TIMELINE_PK" PRIMARY KEY ("TIMELINE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table STEP
--------------------------------------------------------

  ALTER TABLE "C##EATING"."STEP" MODIFY ("STEP_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."STEP" MODIFY ("RECIPE_RECIPE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."STEP" ADD CONSTRAINT "STEP_PK" PRIMARY KEY ("STEP_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "C##EATING"."MEMBER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "C##EATING"."ORDERS" MODIFY ("MEMBER_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."ORDERS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."ORDERS" ADD CONSTRAINT "ORDER_PK" PRIMARY KEY ("ORDER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECIPE_RBOARD_VOTE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" ADD CONSTRAINT "RECIPE_RBOARD_VOTE_PK" PRIMARY KEY ("RNUM", "RECIPENUM", "MEMBERID")
  USING INDEX  ENABLE;
  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" MODIFY ("RNUM" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" MODIFY ("RECIPENUM" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" MODIFY ("MEMBERID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" MODIFY ("VOTE" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" MODIFY ("CDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MATERIAL
--------------------------------------------------------

  ALTER TABLE "C##EATING"."MATERIAL" MODIFY ("MATERIAL_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."MATERIAL" MODIFY ("RECIPE_RECIPE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."MATERIAL" ADD CONSTRAINT "MATERIAL_PK" PRIMARY KEY ("MATERIAL_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOARD_CATEGORY
--------------------------------------------------------

  ALTER TABLE "C##EATING"."BOARD_CATEGORY" ADD CONSTRAINT "BOARD_CATEGORY_PK" PRIMARY KEY ("CID")
  USING INDEX  ENABLE;
  ALTER TABLE "C##EATING"."BOARD_CATEGORY" MODIFY ("CID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."BOARD_CATEGORY" MODIFY ("CNAME" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."BOARD_CATEGORY" ADD UNIQUE ("CNAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CODETYPE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."CODETYPE" MODIFY ("CODETYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."CODETYPE" ADD CONSTRAINT "CODETYPE_PK" PRIMARY KEY ("CODETYPE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RBOARD_VOTE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RBOARD_VOTE" ADD CONSTRAINT "RBOARD_VOTE_PK" PRIMARY KEY ("RNUM", "BNUM", "RID")
  USING INDEX  ENABLE;
  ALTER TABLE "C##EATING"."RBOARD_VOTE" MODIFY ("RNUM" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RBOARD_VOTE" MODIFY ("BNUM" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RBOARD_VOTE" MODIFY ("RID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RBOARD_VOTE" MODIFY ("VOTE" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RBOARD_VOTE" MODIFY ("CDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECIPE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE" MODIFY ("RECIPE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE" MODIFY ("MEMBER_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE" MODIFY ("RECIPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."RECIPE" ADD CONSTRAINT "RECIPE_PK" PRIMARY KEY ("RECIPE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "C##EATING"."ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "C##EATING"."ITEM" ADD CONSTRAINT "ITEM_PK" PRIMARY KEY ("ITEM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "C##EATING"."BOARD" ADD CONSTRAINT "BOARD_FK1" FOREIGN KEY ("BID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ENABLE;
  ALTER TABLE "C##EATING"."BOARD" ADD CONSTRAINT "BOARD_FK2" FOREIGN KEY ("BCATEGORY")
	  REFERENCES "C##EATING"."BOARD_CATEGORY" ("CID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD_UPLOAD_FILE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."BOARD_UPLOAD_FILE" ADD CONSTRAINT "BOARD_UPLOADE_FILE_FK1" FOREIGN KEY ("BNUM")
	  REFERENCES "C##EATING"."BOARD" ("BNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "C##EATING"."CART" ADD CONSTRAINT "CART_ITEM_FK" FOREIGN KEY ("ITEM_ITEM_ID")
	  REFERENCES "C##EATING"."ITEM" ("ITEM_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##EATING"."CART" ADD CONSTRAINT "CART_MEMBER_FK" FOREIGN KEY ("MEMBER_USER_ID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MATERIAL
--------------------------------------------------------

  ALTER TABLE "C##EATING"."MATERIAL" ADD CONSTRAINT "MATERIAL_RECIPE_FK" FOREIGN KEY ("RECIPE_RECIPE_ID")
	  REFERENCES "C##EATING"."RECIPE" ("RECIPE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "C##EATING"."ORDERS" ADD CONSTRAINT "ORDER_MEMBER_FK" FOREIGN KEY ("MEMBER_USER_ID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE "C##EATING"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_ITEM_FK" FOREIGN KEY ("ITEM_ITEM_ID")
	  REFERENCES "C##EATING"."ITEM" ("ITEM_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##EATING"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_ORDER_FK" FOREIGN KEY ("ORDER_ORDER_ID")
	  REFERENCES "C##EATING"."ORDERS" ("ORDER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RBOARD
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RBOARD" ADD CONSTRAINT "RBOARD_FK1" FOREIGN KEY ("BNUM")
	  REFERENCES "C##EATING"."BOARD" ("BNUM") ENABLE;
  ALTER TABLE "C##EATING"."RBOARD" ADD CONSTRAINT "RBOARD_FK2" FOREIGN KEY ("RID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE" ADD CONSTRAINT "RECIPE_MEMBER_FK" FOREIGN KEY ("MEMBER_USER_ID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_LIKE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE_LIKE" ADD CONSTRAINT "RECIPE_LIKE_FK1" FOREIGN KEY ("MEMBER_USER_ID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ENABLE;
  ALTER TABLE "C##EATING"."RECIPE_LIKE" ADD CONSTRAINT "RECIPE_LIKE_FK2" FOREIGN KEY ("RECIPE_RECIPE_ID")
	  REFERENCES "C##EATING"."RECIPE" ("RECIPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_RBOARD
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE_RBOARD" ADD CONSTRAINT "RECIPE_RBOARD_FK1" FOREIGN KEY ("RECIPENUM")
	  REFERENCES "C##EATING"."RECIPE" ("RECIPE_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##EATING"."RECIPE_RBOARD" ADD CONSTRAINT "RECIPE_RBOARD_FK2" FOREIGN KEY ("MEMBERID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_RBOARD_VOTE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" ADD CONSTRAINT "RECIPE_RBOARD_VOTE_FK1" FOREIGN KEY ("RNUM")
	  REFERENCES "C##EATING"."RECIPE_RBOARD" ("RNUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##EATING"."RECIPE_RBOARD_VOTE" ADD CONSTRAINT "RECIPE_RBOARD_VOTE_FK2" FOREIGN KEY ("MEMBERID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STEP
--------------------------------------------------------

  ALTER TABLE "C##EATING"."STEP" ADD CONSTRAINT "STEP_RECIPE_FK" FOREIGN KEY ("RECIPE_RECIPE_ID")
	  REFERENCES "C##EATING"."RECIPE" ("RECIPE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TIMELINE
--------------------------------------------------------

  ALTER TABLE "C##EATING"."TIMELINE" ADD CONSTRAINT "TIMELINE_MEMBER_FK" FOREIGN KEY ("MEMBER_USER_ID")
	  REFERENCES "C##EATING"."MEMBER" ("USER_ID") ON DELETE CASCADE ENABLE;
