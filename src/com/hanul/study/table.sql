create table tester_b(
NAME varchar2(50) constraint tester_name_nn not null,
ID varchar2(50) constraint tester_id_pk primary key,
PW VARCHAR2(50) constraint tester_pssword_nn not null
);
create table test_b(
NO varchar2(50) constraint test_no_nn primary key,
question varchar2(2000) constraint test_question_pk not null,
ANSWER VARCHAR2(50) constraint tester_answer_nn not null
);

desc tester;
drop table test_B;
drop table test;

select * from tester_b;
COMMIT;
rollback;
desc member
select * from test;
DESC TEST_B;
-------------------------------------시퀀스 생성. maxval 20까지 
CREATE SEQUENCE test_seq
START WITH 1 
INCREMENT BY 1 
MAXVALUE 20 
CYCLE NOCACHE;

commit;








INSERT INTO test_b 
VALUES(Test_seq.NEXTVAL,'문제','2');

desc test_b;

truncate table test_b;
drop sequence test_seq;

select * from test_b;



















--양식-----------------------sequence-------------------------양식
CREATE TABLE TMP(
    IDX_TMP NUMBER(10),
    NAME NUMBER(10)
);

컬럼추가
ALTER TABLE TMP
ADD RESULT VARCHAR2(10);

컬럼 속성변경
ALTER TABLE Test_b
MODIFY no number;

컬럼 필드 삭제
ALTER TABLE TMP
DROP COLUMN RESULT;

시퀀스 1~100까지 증가하는
CREATE SEQUENCE test_seq
START WITH 1 
INCREMENT BY 1 
MAXVALUE 20 
CYCLE NOCACHE;

시퀀스로 값 삽입
INSERT INTO TMP
VALUES(TMP_SEQ.NEXTVAL,'TSEDF');

SELECT * FROM TMP;

시퀀스 삭제
drop sequence test_seq;


truncate table tmp;

현재 시퀀스 값 확인
select test_seq.currval from dual; --한번도 실행을 하지 않아서 에러가 걸림

시퀀스 값 접근 : CURRVAL(현재값), NEXTVAL(다음값) 
--nextval <- 한번도 실행 안 했으면(한 번은 실행 해줘야함)
select emp_seq.NEXTVAL from dual; --1, 한번도 실행 안 해서 초기값 조회

현재 시퀀스 조회
select test_seq.currval from dual;

emp 테이블의 PK인 id 컬럼에 시퀀스를 적용하여 데이터 행을 삽입저장한다.

desc emp;

insert into emp
values (emp_seq.currval, '이순신');

insert into emp
values (emp_seq.nextval, '강감찬');


* 시퀀스 삭제
drop sequence test_seq;
drop sequence emp_seq;


























