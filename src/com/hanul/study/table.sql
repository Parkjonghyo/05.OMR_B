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

commit;

CREATE SEQUENCE test_seq    --시퀀스
START WITH 1 
INCREMENT BY 1 
MAXVALUE 40000 
CYCLE NOCACHE;

select * from test_b;       
truncate table test_b;
drop sequence test_seq;
--------------------------------------------------------------------------------문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제
--INSERT INTO test_b          
--VALUES(Test_seq.NEXTVAL,'문제','2','1','보기1~~~','보기2~~~','보기3~~~','보기4~~~');
--------------------------------------------------------------------------------문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제문제

INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'반려견이 질투할 때 하는 행동이 아닌 것은?',
'4',
'1',
'신발에 화풀이',
'땅파기',
'배변 실패.',
'주인 입술 핥기.'                   
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'다음 중 강아지와 같이 잘 때의 장점이 아닌 것은?',
'2',
'1',
'주인 곁에 붙어서 자면서 체온 유지 가능',
'자신의 영역이라고 느끼는 곳에서 수면을 취하며 안정감을 얻음',
'분리 불안을 겪을 가능성이 낮아짐',
'강아지와 보호자 간의 유대감 강화'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'다음 중 건식사료를 추천할만한 케이스는?',
'1',
'1',
'이빨에 치석이 너무 많이 끼는 A씨네 멍멍이',
'물을 자주 마시지 않는 B씨네 멍멍이',
'12살이 넘어가는 노견인 C씨네 멍멍이',
'보존제에 알레르기 반응이 잘 오는 D씨네 멍멍이'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'다음 중 3대 지랄견이 아닌 것은',
'4',
'1',
'비글',
'코카 스파니엘',
'미니어처 슈나우저',
'치와와'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'개는 어떻게 시간을 판단할까요?',
'3',
'1',
'태양의 위치로 판단',
'자신의 기억에 의존하여 판단',
'일단위로 주기를 파악하여 판단',
'배꼽시계로 파악하여 판단'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'강아지 뒷발의 발가락은 몇개일까요?',
'2',
'1',
'3개',
'4개',
'5개',
'10개'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'반려견과 관계를 회복하는 방법으로 옳지 않은 것은?',
'1',
'1',
'오랫동안 눈을 마주친다',
'손 냄새를 맡게 해준다',
'간식을 준다',
'큰소리로 말하지 않는다'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'진돗개가 경찰견이 될 수 없었던 이유 첫번째는 충성심인데 두번째는 무엇?',
'1',
'1',
'지능',
'체력',
'골격',
'번식능력'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'주인의 몸에 물이 묻었을 때 반려견이 핥는 이유는?',
'3',
'1',
'목이 말라서',
'더러워보여서',
'위험하다고 느껴서',
'궁금해서'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'반려견이 갑자기 배변 장소를 옮긴 이유로 적합하지 않은 것은?',
'2',
'1',
'갇힌 경험이 있어서',
'이사가려고',
'물기가 많아서',
'그냥 하기 싫어서'
);
--============================================고양이 문제==============
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'중성화 수술을 해야하는 이유는?',
'4',
'2',
'개체 수 과잉 방지',
'발정기 행동 문제 완화',
'질병 예방',
'얌전한 성격을 위해'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'다음중 고양이 중성화 수술에 대한 설명으로 틀린것은?',
'2',
'2',
'암컷고양이의 난소와 자궁을 적출한다.',
'수컷고양이의 난소와 자궁을 적출한다.',
'수컷 고양이의 고환을 제거한다',
'면허가 있는 수의사만 수술을 집도할수있다'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'다음중 고양이의 설명으로 틀린것은?',
'1',
'2',
'고양이는 무섭다',
'고양이는 활발하다',
'고양이목소리는 허스키하다',
'고양이는 츄르를 좋아한다'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'고양이의 평균 수명은?',
'1',
'2',
'100살',
'90살',
'80살',
'10살'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'고양이가 목욕을 싫어하는 이유는?',
'3',
'2',
'냄새에 민감하기 때문에',
'털이 젖는 것이 싫기 때문에',
'추워서',
'집사에게 괴롭혀지는 것 같아서.'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'반려묘와 관계를 회복하는 방법으로 옳지 않은 것은?',
'1',
'2',
'오랫동안 눈을 마주친다',
'손 냄새를 맡게 해준다',
'간식을 준다',
'큰소리로 말하지 않는다'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'고양이의 목숨은?',
'4',
'2',
'9개',
'7개',
'6개',
'1개'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'고양이 눈이 어둠 속에서 빛이나는 이유는?',
'4',
'2',
'고양이의 눈에는 플래시처럼 빛을 내는 기관이 따로 있다',
'고양이의 눈에는 망막 뒤에 빛을 반사하는 층이 있기 때문이다',
'보는 사람의 착시 현상이다',
'주변에 빛 때문이다'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'고양이의 혀가 까칠까칠한 이유는?',
'2',
'2',
'발바닥에 생기는 각질을 쉽게 제거하기 위해서',
'물 마실 때 혀를 국자처럼 사용하려고',
'별 이유 없이 그냥 까칠하게 태어난 것',
'고양이의 성격이 까칠해서.'
);
INSERT INTO test_b          
VALUES(Test_seq.NEXTVAL,
'개 고양이의 공통점으로 알맞은 것은?',
'3',
'2',
'두 동물 모두 발톱을 감출 수 있다',
'두 동물 모두 완전한 육식동물이다',
'두 동물 모두 꼬리를 매우 중요한 소통 수단으로 사용한다',
'두 동물 모두 네일아트를 좋아한다.'
);