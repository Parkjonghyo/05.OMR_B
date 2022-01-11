create table tester_b(
NAME varchar2(50) constraint tester_name_nn not null,
ID varchar2(50) constraint tester_id_pk primary key,
PW VARCHAR2(50) constraint tester_pssword_nn not null
);
create table test_b(
NO varchar2(50) constraint test_no_nn not null,
question varchar2(2000) constraint test_question_pk primary key,
ANSWER VARCHAR2(50) constraint tester_answer_nn not null
);

desc tester;
drop table tester_B;
drop table test;

select * from tester;
COMMIT;
rollback;
desc member
select *
from test;
