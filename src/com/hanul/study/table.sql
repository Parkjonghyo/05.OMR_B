create table tester_b(
NAME varchar2(50) constraint tester_name_nn not null,
ID varchar2(50) constraint tester_id_pk primary key,
PW VARCHAR2(50) constraint tester_pssword_nn not null
);
create table test_b(
NO number(30) constraint test_no_nn primary key,
question varchar2(2000) constraint test_question_pk not null,
ANSWER VARCHAR2(50) constraint test_answer_nn not null check(answer in (1,2,3,4) ),
subno number(10) constraint test_subno_nn not null 
);

commit;


CREATE SEQUENCE test_seq    --시퀀스
START WITH 1 
INCREMENT BY 1 
MAXVALUE 40000 
CYCLE NOCACHE;


INSERT INTO test_b          --insert
VALUES(Test_seq.NEXTVAL,'문제','2');

truncate table test_b;
drop sequence test_seq;

