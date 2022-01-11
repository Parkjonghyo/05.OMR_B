DROP TABLE member;

----------------------------------------------------------------------------------------------------
--1. 입력테이블 : 회원관리테이블 생성, 반드시 제약조건명 지정 후 테이블 구조 확인(CONSTRAINT  제약조건명 제약조건)
--                                     ￣￣￣￣￣￣￣￣￣￣￣ 
create table member_B(
ID varchar2(50) constraint member_id_pk primary key,
PASSWORD VARCHAR2(50) constraint member_pssword_nn not null,
NAME VARCHAR2(20) constraint member_name_nn not null,
PHONE VARCHAR2(13),
EMAIL VARCHAR2(50),
JOINDATE DATE constraint member_joindate_nn not null
);
create table tester_B(
NAME varchar2(50) constraint tester_name_nn not null,
ID varchar2(50) constraint tester_id_pk primary key,
PW VARCHAR2(50) constraint tester_pssword_nn not null,
result varchar2(10) constraint tester_result_nn not null
);
desc tester;
drop table tester_b;
drop table member_b;

select * from tester;
COMMIT;
desc member
select *
from test;

create table test_B(
NO varchar2(50) constraint test_no_nn not null,
question varchar2(2000) constraint test_question_pk primary key,
ANSWER VARCHAR2(50) constraint tester_answer_nn not null
);



----------------------------------------------------------------------------------------------------

--2. 샘플데이터 입력 후 COMMIT 하고 난 후 회원정보 조회

--1)홍길동 입력
insert into member
values('hong', 'hong1234', '홍길동', '062-1234-5678', 'hong@naver.com', '20/01/10')

--2)심청 입력
insert into member
values('sim', 'simsim', '심청', '', 'sim@daum.net', '20/01/12')

--3)박문수 입력
insert into member
values('park', 'park', '박문수', '010-5678-1234', 'park@naver.com', '20/01/12')

--4)전우치 입력
insert into member
values('jeon', 'jeon9876', '전우치', '010-4252-9876', 'jeon@gmail.com', '20/01/14')

--5)박자바 입력
insert into member
values('java', 'park', '박자바', '032-8520-3697', 'java@hrd.co.kr', '20/01/14')
----------------------------------------------------------------------------------------------------

--3. 정보변경 후 COMMIT 하고 난 후 회원 정보 조회
update member
set phone = '02-4567-3210'
where id = 'sim'
update member
set email = 'sim02@daum.net'
where id = 'sim'
update member
set phone = ''
where id = 'jeon'
update member
set email = 'jeon@naver.com'
where id = 'jeon'

commit
select *
from member;

----------------------------------------------------------------------------------------------------

--4. 정보삭제 후 COMMIT 하고 난 후 회원 정보 조회
delete member
where id = 'java'
select *
from member;


----------------------------------------------------------------------------------------------------

--5. 조회

--1) 성명이 홍길동인 회원정보를 조회하는 SQL을 작성
select *
from member
where name = '홍길동'

--2) 전화번호가 없는 회원정보를 조회하는 SQL을 작성
select *
from member
where phone is null

--3) naver 이메일을 사용하는 회원정보를 조회하는 SQL을 작성
select *
from member
where email LIKE '%naver%'

--4) 가장 최근에 가입한 회원정보를 조회하는 SQL을 작성
select max(joindate)
from member

select *
from member
where joindate = (select max(joindate) from member)

--5) 가입일자별로 가입한 회원수를 파악할 수 있도록 가입일자, 회원수를 조회하는 SQL을 작성 ( ALIAS　유의)
select joindate, count(*) su
from member
group by joindate
order by su asc;


----------------------------------------------------------------------------------------------------
