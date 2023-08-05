# Team Project 1)

#### ✔️Front-end
<img src="https://img.shields.io/badge/Css-1572B6?style=for-the-badge&logo=Css&logoColor=white"><img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=purple"><img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=black"><img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jQuery&logoColor=yellow">
#### ✔️Back-end
<img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=green"><img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=for-the-badge&logo=Apache Tomcat&logoColor=black">
#### ✔️DB
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=green">

### ✔️About project
#### 놀이공원 및 놀이기구에 대한 상세 페이지를 담당했습니다. 사용자에게 다양한 정보 제공과 편의를 중점에 두고 프로젝트를 진행했습니다.
#### AJAX를 이용한 데이터의 비동기 처리 방식 활용과 Spring Framework의 MVC 모델 작동 원리 및 SQL 쿼리를 더욱 더 이해할 수 있는 계기가 되었습니다.



<br/><br/>
# Team Project 2)

#### ✔️Front-end
<img src="https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=React&logoColor=white"><img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=Node.js&logoColor=black">
#### ✔️Back-end
<img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=for-the-badge&logo=Spring Boot&logoColor=green"> 

#### ✔️DB
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=green">

### ✔️About project
#### 두번째 팀 프로젝트는 기존의 Spring Framework와 JavaScript 기반의 프로젝트를 Spring Boot와 React를 사용해 적용시켰습니다.
#### 1) JPA를 통해 SQL문이 아닌 Method를 통한 객체지향적 코드 작성을 학습했습니다.
#### 2) 데이터를 JSON 형태로 나타내고 처리하는 방식을 통해 RESTful API에 대한 이해도가 증가하였습니다.
#### 3) React에서 Component 생명 주기, Hook, 렌더링 원리에 친숙해진 계기가 되었습니다.
#### 4) websocket을 활용한 채팅 기능을 추가하여 websocket의 실시간 양방향 통신을 이해할 수 있었습니다.

<br/><br/><br/>
## 1. 놀이공원 상세 페이지입니다. 
#### 디자인적인 부분을 강조하기 위해 mouseover 이벤트 처리를 이용하여 기본적인 이미지 전환을 구현해보았습니다.
![main2](https://github.com/yunijcoding/webproject/assets/140949271/eb8c167c-fb76-404e-8427-9292e4990cbd)
<br/><br/><br/><br/><br/><br/>

## 2. 편의시설 목록입니다.
#### 1) useState 훅을 이용해 Detail과 Back 버튼을 클릭했을 때 동적으로 데이터가 처리되도록 했습니다.
#### 2) 더보기, 접기 버튼으로 Paging을 구현했습니다.

- 화면에 보여지는 편의시설 개수를 limit 변수로 지정하고 limit 값과 전체 개수에 따라 더보기, 접기 버튼이 나타나도록 분기하였습니다.<br/><br/>
![fac paging](https://github.com/yunijcoding/yunijcoding/assets/140949271/d89caf2b-7dc4-4971-ace6-4374124ff4a1)
- slice 함수와 offset 방식으로 Paging 처리를 했습니다.<br/><br/>
![스크린샷 2023-08-03 115120](https://github.com/yunijcoding/yunijcoding/assets/140949271/46aaf532-cc98-426e-93ab-e30a49d6e084)

![facilities](https://github.com/yunijcoding/webproject/assets/140949271/b8dfbc89-3804-48a2-9902-9c70ce28e6a6)
<br/><br/><br/><br/><br/><br/>

## 3. 다음은 간략한 후기를 작성할 수 있는 공간입니다.
#### 1) 로그인 한 아이디에 한해 글 작성이 가능하고 점수를 부여할 수 있습니다.
#### 2) 관리자 아이디인 경우 답글을 작성할 수 있습니다.
#### 3) react-js-pagination 패키지를 이용해 Paging 처리를 하고 오른쪽 상단에는 특정 개수에 따라 후기 목록이 나타나도록 했습니다.
#### 4) 등록된 후기 작성자 아이디는 익명 처리했습니다.
![review](https://github.com/yunijcoding/webproject/assets/140949271/e7328e56-cb24-4d73-ab90-b7c7aa3c9b0c)
<br/><br/><br/><br/><br/><br/>

## 4. 국내외 놀이공원 추천 목록입니다.
#### 다양한 정보를 제공하고자 놀이공원 별 평균 후기 점수와 후기 개수를 취합하여 추천 목록을 추가했습니다.
![amuseList](https://github.com/yunijcoding/webproject/assets/140949271/e01dc676-376d-4164-b224-7103ee817e7b)
<br/><br/><br/><br/><br/><br/>

## 5. 놀이공원의 위치입니다.
#### kakao map api를 이용해 해당 놀이공원의 위치와 마커를 표기했습니다.
![map](https://github.com/yunijcoding/webproject/assets/140949271/0f6536ef-616a-46de-8e4e-b1d86cf7ea17)
<br/><br/><br/><br/><br/><br/>

## 6. 놀이기구 상세 페이지입니다.
#### 1) 배경 이미지가 고정된 채로 스크롤이 이동하는 디자인이 매력적으로 느껴져서 background-attachment 속성을 fixed로 설정하여 구현해보았습니다.
#### 2) 탭 메뉴를 통해 다양한 놀이기구 정보를 나타냈습니다.
![rideDetail](https://github.com/yunijcoding/webproject/assets/140949271/a13f6f81-c11d-49d2-9a77-cbefa57178bf)
<br/><br/><br/><br/><br/><br/>

## 7. 마지막으로 웹소켓을 활용한 채팅 서비스입니다.
#### 1) 소켓 서버는 express로 구성했습니다.
#### 2) chat 버튼 클릭 시 모달창이 나타나고 소켓 서버에 connection 되도록 코드를 작성했습니다.

- 소켓 서버는 js 파일을 생성하고 npm init을 통해 package.json에 필요한 패키지를 설치했습니다.
- 소켓 서버와 클라이언트는 port 3001번에서 connection 되도록 설정했습니다.
![스크린샷 2023-08-03 122607](https://github.com/yunijcoding/yunijcoding/assets/140949271/77e2fae1-648e-47e8-bb6b-c9493ba36ab0)
![스크린샷 2023-08-03 122737](https://github.com/yunijcoding/yunijcoding/assets/140949271/9481179e-c4e5-488d-9393-8b5889ec8f99)

- 클라이언트가 서버로 데이터를 전송할 때 사용하는 emit 메소드를 통해 메세지를 전송합니다.
![스크린샷 2023-08-03 123116](https://github.com/yunijcoding/yunijcoding/assets/140949271/50e82bf8-cea9-4640-8c37-e3a5258cfd38)

- 소켓 서버와 클라이언트 측에서는 보낸 데이터를 on 메소드를 통해 받아서 처리할 수 있습니다.
![스크린샷 2023-08-03 123332](https://github.com/yunijcoding/yunijcoding/assets/140949271/63d8f957-d6f5-486b-a4d7-d83e306b6354)
![스크린샷 2023-08-03 123419](https://github.com/yunijcoding/yunijcoding/assets/140949271/1283f6fb-9238-4d7e-8131-740f030a70b9)

![chat](https://github.com/yunijcoding/webproject/assets/140949271/4dd0736a-9560-4e9e-b1a1-2d0cfce18b2b)

## Feedback
#### 새로운 언어를 학습하는 것에 대한 두려움을 없애고 빠르게 변화하는 개발 트렌드에 발 맞춰 노력하면 충분히 적응할 수 있다는 모습을 보이고 싶어서 Spring boot와 React를 기존 프로젝트에 적용해보았습니다. JPA를 통한 객체지향적 설계와 Redux를 이용한 Component 상태 관리에 대해 앞으로 꾸준히 학습하고 보완하겠습니다.
