--CREATE 
/*
CREATE TABLE FridayTABLE (
 id NUMBER(5) PRIMARY KEY,
 name VARCHAR2(50),
 description VARCHAR2(100),
 birthdate DATE
 );
 */
 --INSERT 문 
 --To Date 함수 사용해서 날짜 형식으로 데이터 삽입
 /*
 INSERT INTO fridaytable (id, name,description, birthdate)
 Values (1, '박창규', '금요일천사', TO_DATE('1970-05-25', 'YYYY-MM-DD'));
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (2, '나세희', '8월의 요정', TO_DATE('1997-08-16', 'YYYY-MM-DD')); 
  INSERT INTO fridaytable (id, name,description, birthdate)
 Values (3, '주서경', '11월의악마', TO_DATE('2002-11-29', 'YYYY-MM-DD'));
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (4, '김민수', '2월의 요정', TO_DATE('2000-02-07', 'YYYY-MM-DD')); 
  INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (5, '이미혜', '2월의 천사', TO_DATE('2001-02-09', 'YYYY-MM-DD')); 
 */
 --ORDER BY : 결과 정렬
 --이름을 오름차순으로 정렬
 SELECT * FROM fridaytable ORDER BY birthdate;
 
 --COUNT 행의 수를 세어줍니다.
 SELECT COUNT(*) AS row_COUNT FROM fridaytable;
 
 -- 테이블 구조 변경하기
 -- 열의 크기 늘리기
-- description 열의 크기를 늘리기
--ALTER TABLE fridaytable MODIFY description VARCHAR2(200);

 --SUM 숫자 열의 합을 계산
 --모든 id 값을 합산
 SELECT SUM(id) AS id_sum FROM fridaytable;
 
 --TO_CHAR 날짜를 문자열로 변환
 SELECT name, TO_CHAR(birthdate, 'YYYY-MM-DD') AS birthdate_str From fridaytable;
 
 --LENGTH : 문자열의 길이 반환
 SELECT description, LENGTH(description) AS name_len FROM fridaytable;
 
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (6, 'Jane Smith', '만나써 반가워요!', TO_DATE('2007-05-05', 'YYYY-MM-DD'));
 
 -- UPPER 문자열을 대문자로 변환
 SELECT name, UPPER(name) AS upper_name FROM fridaytable;
 -- LOWER 문자열을 소문자로 변환
 SELECT name, LOWER(name) AS lower_name FROM fridaytable;
 --ROUNT 숫자를 반올림
 --birthdate 열의 연도를 반올림하여 출력
 --EXTRACT 날짜 값에서 연도를 추출
 SELECT name, ROUND(EXTRACT(YEAR FROM birthdate)) AS BirthYEAR FROM fridaytable;
 
Window
	SQL에서 사용되는 분석 함수
	결과 집합 내에서 행의 순서와 관련된 계산을 수행할 수 있음
	집계, 순위, 평균, 합계 등을 계산할 때 유용
데이터를 파티션 별로 분할하고 순서를 정의한 다음 각 파티션 내에 계산을 수행
<윈도우함수>(<표현식>) OVER (
	PARTITION BY <파티션 열>
	ORDER BY <정렬 열>
	ROWS BETWEEN <시작 행> AND <끝 행>
)

<윈도우 함수> : 사용할 윈도우 함수 작성
	               ex) SUM, AV, RANK 등
<표현 식> : 계산을 수행할 열 또는 식
PARTITION BY : 데이터를 파티션으로 나누는데 사용할 열을 지정
ORDER BY : 각 파티션 내에서 행 순서를 정의하는데 사용할 열을 지정
ROWS BETWEEN : 계산을 수행할 행의 범위를 정의하는데 사용

SELECT order_id, order_date, total_price,
    SUM(total_price) OVER (ORDER BY order_date) AS OD --윈도우 함수
							이 함수는order-date 를 기준으로 각 주문의 총 가격을 누적한 값을 반환한것
							이 결과 집합에는 order_id, order_date,total_price, OD열이 포함 각 주문에 대한 누적 가격을 계산할 수 있음
FROM orders;

