CREATE TABLE TABLE1 
(
  USER_ID NUMBER(5) 
, USER_NAME VARCHAR2(20) 
, USER_MAIL VARCHAR2(20) 
);

COMMENT ON COLUMN TABLE1.USER_ID IS '저장된순서';

COMMENT ON COLUMN TABLE1.USER_NAME IS '유저 이름';
