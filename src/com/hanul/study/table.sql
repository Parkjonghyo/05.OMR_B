create table tester_b(
NAME varchar2(50) constraint tester_name_nn not null,
ID varchar2(50) constraint tester_id_pk primary key,
PW VARCHAR2(50) constraint tester_pssword_nn not null
);
create table test_b(
NO number(30) constraint test_no_nn primary key,
question varchar2(2000) constraint test_question_pk not null,
ANSWER VARCHAR2(50) constraint test_answer_nn not null check(answer in (1,2,3,4) ),
subno number(10) constraint test_subno_nn not null, 
view1 varchar2(500) constraint test_view1_nn not null,
view2 varchar2(500) constraint test_view2_nn not null,
view3 varchar2(500) constraint test_view3_nn not null,
view4 varchar2(500) constraint test_view4_nn not null
);
CREATE SEQUENCE test_seq    --시퀀스
START WITH 1 
INCREMENT BY 1 
MAXVALUE 40000 
CYCLE NOCACHE;

-- 위쪽은 DB 기본설정들.

--insert 견본

INSERT INTO test_b         
VALUES(Test_seq.NEXTVAL,'문제','2','2','보기1~~~','보기2~~~','보기3~~~','보기4~~~');


-- 초기화를 위한 모든 테이블 드랍
drop table test_b;
drop table tester_b;
drop sequence test_seq;

-- 테이블 내의 값만 초기화       
truncate table test_b;
	
rollback;
commit;