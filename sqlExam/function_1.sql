--CREATE 
/*
CREATE TABLE FridayTABLE (
 id NUMBER(5) PRIMARY KEY,
 name VARCHAR2(50),
 description VARCHAR2(100),
 birthdate DATE
 );
 */
 --INSERT �� 
 --To Date �Լ� ����ؼ� ��¥ �������� ������ ����
 /*
 INSERT INTO fridaytable (id, name,description, birthdate)
 Values (1, '��â��', '�ݿ���õ��', TO_DATE('1970-05-25', 'YYYY-MM-DD'));
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (2, '������', '8���� ����', TO_DATE('1997-08-16', 'YYYY-MM-DD')); 
  INSERT INTO fridaytable (id, name,description, birthdate)
 Values (3, '�ּ���', '11���ǾǸ�', TO_DATE('2002-11-29', 'YYYY-MM-DD'));
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (4, '��μ�', '2���� ����', TO_DATE('2000-02-07', 'YYYY-MM-DD')); 
  INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (5, '�̹���', '2���� õ��', TO_DATE('2001-02-09', 'YYYY-MM-DD')); 
 */
 --ORDER BY : ��� ����
 --�̸��� ������������ ����
 SELECT * FROM fridaytable ORDER BY birthdate;
 
 --COUNT ���� ���� �����ݴϴ�.
 SELECT COUNT(*) AS row_COUNT FROM fridaytable;
 
 -- ���̺� ���� �����ϱ�
 -- ���� ũ�� �ø���
-- description ���� ũ�⸦ �ø���
--ALTER TABLE fridaytable MODIFY description VARCHAR2(200);

 --SUM ���� ���� ���� ���
 --��� id ���� �ջ�
 SELECT SUM(id) AS id_sum FROM fridaytable;
 
 --TO_CHAR ��¥�� ���ڿ��� ��ȯ
 SELECT name, TO_CHAR(birthdate, 'YYYY-MM-DD') AS birthdate_str From fridaytable;
 
 --LENGTH : ���ڿ��� ���� ��ȯ
 SELECT description, LENGTH(description) AS name_len FROM fridaytable;
 
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (6, 'Jane Smith', '������ �ݰ�����!', TO_DATE('2007-05-05', 'YYYY-MM-DD'));
 
 -- UPPER ���ڿ��� �빮�ڷ� ��ȯ
 SELECT name, UPPER(name) AS upper_name FROM fridaytable;
 -- LOWER ���ڿ��� �ҹ��ڷ� ��ȯ
 SELECT name, LOWER(name) AS lower_name FROM fridaytable;
 --ROUNT ���ڸ� �ݿø�
 --birthdate ���� ������ �ݿø��Ͽ� ���
 --EXTRACT ��¥ ������ ������ ����
 SELECT name, ROUND(EXTRACT(YEAR FROM birthdate)) AS BirthYEAR FROM fridaytable;
 
 
 
 