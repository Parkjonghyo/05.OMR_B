# 05.OMR_B
2022 한울 팀프로젝트 OMR 사이트.  
다른 요구사항 명세서는 root의 미니프로젝트.txt에 명시되어있다.

## 연동방법

1. github 회원가입  
    1-1. 가입할 때 사용한 이메일을 저한테 보내주세요.
2. github desktop 설치

3. github desktop에서 File > clone Repository 에서  
    3-1. GitHub.com에서 05.OMR_B를 찾는다.  
    or  
    3-2. URL에서 현재 주소를 넣는다.

4. 바로 Clone을 하지 말고 바로 아래의 Local path에서 Choose 버튼을 눌러서  
지금 자주 사용하고있는 폴더에 넣는다.

5. Clone을 누른다.

## 기능

회원가입 ▶ 이름, id(중복확인), pw

대주제 ▶ 동물  
ㄴ소주제 ▶ 강아지, 고양이

통과 점수 ▶ 60점

시험 시간 ▶ 미정

로그인 창 시작 ▶ loginView.jsp

## DB 테이블 명세
[TABLE TESTER] - 응시자
- name 이름
- id 아이디 PK
- pw 비밀번호

[TABLE TEST] - 시험
- no 시험문제번호 PK
- question 시험문제상세
- answer 시험문제정답

## 역할 분배
- 규형 : DB

- 수빈 : WEB

- 상민 : DAO

- 종효 : JSP

## 산출물
[jsp구조 - Oven](https://ovenapp.io/project/D9DqGekZvOWoO6yq1TsInbAJtxWsZgXv#N9TF9)  
[웹 디자인 시안들 - Figma](https://www.figma.com/file/cni9973g9Uk9KrWEzM4Kzt/Untitled?node-id=0%3A1)

## 보류된 기능
- 한 번 시험을 보면 다시는 못 보게 하는 기능
- 자동로그인 기능
- 아이디/비밀번호 찾기 기능
- 회원가입 시 비밀번호 특수문자, 대소문자 섞기 제약주기
- 고양이나 강아지를 선택했을 시 이전에 본 시험결과 알려주기
- 왼쪽엔 문제와 번호 / 우측 바에는 omr형식의 번호들만 있도록 하여 서로 연동시키기.
- 처음부터 다시 풀기 기능
- 틀린 문제만 다시 풀기 기능

## 참고된 웹사이트
[github데탑 이클립스 연동](https://itisenjoyable.tistory.com/72)  
[Github-Desktop으로-협업하기](https://velog.io/@c-on/Github-Desktop%EC%9C%BC%EB%A1%9C-%ED%98%91%EC%97%85%ED%95%98%EA%B8%B0)  
[좋은 git 커밋 메시지를 작성하기 위한 7가지 약속](https://meetup.toast.com/posts/106)  
[깃허브데스크탑 협업방법](https://c-on.tistory.com/18)  
[[Oracle DB] 오라클 auto_increment (시퀀스)](https://luji.tistory.com/71)  
[폼 필드 input type="radio" 디자인(CSS) 변경 하기](https://ingijjung.tistory.com/12)
