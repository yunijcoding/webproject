<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- CSS only -->
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" />

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" />
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: "Noto Sans KR", sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-size: cover;
}

#h1 {
	color: black;
}

body::before {
	content: "";
	position: absolute;
	z-index: 1;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-color: rgba(0, 0, 0, 0.7);
	background-color: #fff;
}

.logo {
	/* content: ''; */
	/* display: inline-block; */
	top: 50%;
	right: 13px;
	width: 320px;
	height: 30px;
	margin-top: 1px;
	margin-left: 40px;
	margin-bottom: 50px;
	background-image: url("/resources/img/excitingamusement.png");
	background-size: auto;
	cursor: pointer;
}

.login-form {
	position: relative;
	z-index: 2;
}

.login-form h1 {
	font-size: 32px;
	color: #fff;
	text-align: center;
	margin-bottom: 60px;
}

.int-area {
	width: 400px;
	position: relative;
	margin-top: 20px;
}

.int-area:first-child {
	margin-top: 0px;
}

.int-area input {
	width: 100%;
	padding: 20px 10px 10px;
	background-color: transparent;
	border: none;
	border-bottom: 1px solid #999;
	font-size: 10px;
	color: #000;
	outline: none;
}

.int-area label {
	position: absolute;
	left: 10px;
	top: 15px;
	font-size: 18px;
	color: #999;
	transition: top 0.5s ease;
}

.int-area label.warning {
	color: red !important;
	animation: warning 0.3s ease;
	animation-iteration-count: 3;
}

  @keyframes warning {
    0% {
      transform: translateX(-8px);
    }

    25% {
      transform: translateX(8px);
    }

    50% {
      transform: translateX(-8px);
    }

    75% {
      transform: translateX(8px);
    }
  }
.int-area input:focus+label, .int-area input:valid+label {
	top: -2px;
	font-size: 13px;
	color: #166cea;
}

.btn-area {
	margin-top: 30px;
}

.btn-area button {
	width: 100%;
	height: 50px;
	background: #166cea;
	color: #fff;
	font-size: 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.caption {
	margin-top: 20px;
	text-align: right;
}

.caption a {
	font-size: 15px;
	color: #999;
	text-decoration: none;
}

#pwsearch {
	margin-left: 15px;
}

img {
	margin-top: 100px;
	width: 400px;
	height: 150px;
	object-fit: cover;
}

#signup, #pwsearch {
	color: black;
}

#encriptcheckbox {
	display: flex;
	align-items: center;
	gap: 10px;
}

input[type="checkbox"] {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	width: 16px;
	height: 16px;
	border: 1px solid #ccc;
	background-color: white;
	/* checkbox 색깔 변경 */
}

input[type="checkbox"]:checked {
	background-color: green;
}

#icon {
	padding-top: 70px;
}
</style>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
</head>

<body>
	<section class="login-form">
		<a href="/"><div class="logo"></div></a>
		<div class="form-group">
			<div class="form-check form-check-inline">
				<label class="form-check-label" for="long_login"> <input
					class="form-check-input" type="checkbox" id="long_login"
					name="long_login" value="on"> 아이디 자동입력
				</label>
			</div>
		</div>
		<form action="/login" method="post" id="form">
			<input id="URI" name="URI" type="hidden" value="${URI}"/>
			<div class="int-area">
				<input type="text" name="member_id" id="id" value="${cookie.long_login.value}" required /> <label
					for="member_id" >USER NAME</label>
			</div>
			<div class="int-area">
				<input type="password" name="m_pass" id="pw" autocomplete="off"
					required /> <label for="m_pass">PASSWORD</label>
				<div id="incorrect"></div>
			</div>
			<div class="btn-area">
				<button id="btn" type="button" onclick="loginCheck()">LOGIN</button>
			</div>
		</form>
		<div class="caption row">
			<div class="col form-check form-switch" id="radio">
				<label class="form-check-label" for="flexSwitchCheckChecked"
					id="encriptcheckbox"> <input class="form-check-input"
					type="checkbox" name="checkboxenc" id="flexSwitchCheckChecked" value="enc_on" checked />암호화
					로그인
				</label>
			</div>
			<div class="col">
				<a href="/signUp" id="signup">회원가입</a> <a href="/searchPw" id="pwsearch">비밀번호
					찾기</a>
			</div>
		</div>
		<div class="text-center" id="icon" style="font-size: 30px">
			<div style="font-size: 17px; margin-bottom: 20px">소셜 계정으로 간편
				로그인</div>
			<!-- my-4는 위아래 여백추가-->
			<hr class="my-4" />
			<!-- <a href="#"> <i class="fab fa-facebook fa-lg"></i>
			</a> &nbsp;&nbsp;&nbsp; <a href="#"> <i class="fab fa-google fa-lg"
				style="color: red"></i>
			</a> &nbsp;&nbsp;&nbsp;  --><a id="kakaologin" href="#"><img src="/resources/img/kakao.png" style="width:50px; height:50px; margin-top:0px;"/>
			 <!-- <i class="fab fa-line fa-lg"></i> -->
			</a>
		</div>
		<div>
			<img
				src="https://ssl.pstatic.net/melona/libs/1378/1378592/9baf2c4b14aec68ea800_20220902161708847.jpg" />
		</div>
	</section>
		
		<!-- 카카오 로그인 용 -->
		<form id="kakaoform" action="/login" method="post">
			<input type="hidden" name="kakaoId" id="kakaoId">
			<input type="hidden" name="nickname" id="nickname">
			<input type="hidden" name="thumbnail" id="thumbnail">
		</form>
	
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('824fd1009e4c444d385c98e35623ee6e'); //발급받은 키 중 javascript키를 사용해준다.
console.log("sdk초기화여부 판단 :"+Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인

$('#clicker').on('click',function(e){
	e.preventDefault();
	kakaoLogout();
});

$('#kakaologin').on('click',function(e){
	e.preventDefault();
	kakaoLogin();
})

function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response);
        	  console.log(response['id']);
        	  console.log(response['kakao_account']['profile']['nickname']);
        	  console.log(response['kakao_account']['profile']['thumbnail_image_url']);
        	  
        	  const id = response['id'];
        	  const nickname = response['kakao_account']['profile']['nickname'];
        	  const thumbnail = response['kakao_account']['profile']['thumbnail_image_url'];
        	  
        	  $('#kakaoId').val(id);
        	  $('#nickname').val(nickname);
        	  $('#thumbnail').val(thumbnail);
				
        	  $('#kakaoform').submit();
        	  
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() { 
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response);
	        	
	        },
	        fail: function (error) {
	          console.log(error);
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
</script>
	

	<script>
		let id = $("#id");
		let pw = $("#pw");
		let btn = $("#btn");

		$(btn).on("click", function() {
			if ($(id).val() == "") {
				$(id).next("label").addClass("warning");
				setTimeout(function() {
					$("label").removeClass("warning");
				}, 1500);
			} else if ($(pw).val() == "") {
				$(pw).next("label").addClass("warning");
				setTimeout(function() {
					$("label").removeClass("warning");
				}, 1500);
			}
		});

		$(function() {
				const member_id = "${member_id}";
				if(member_id != null){
					$('#long_login').prop("checked", true);
					$('#flexSwitchCheckChecked').prop("checked", false);
			}
			
			$('#long_login').on('click', function() {
				console.log("this.val : " + $(this).val())
				if ($(this).val() == 'on') {
					$('#flexSwitchCheckChecked').prop("checked", false);
				}
			});
			$('#flexSwitchCheckChecked').on('click', function() {
				console.log("this.val : " + $(this).val())
				if ($(this).val() == 'enc_on') {
					$('#long_login').prop("checked", false);
				}
			});

		});
	</script>

	<script>
		function loginCheck() {

			var member_id = $('#id').val();
			var m_pass = $('#pw').val();
		
/* 			const enc = $('input[name=checkboxenc]').val(); */
  			const enc = $('input[name=checkboxenc]').is(':checked') ? 'enc_on' : null;
 
			let m_enc = "";
			
			if(enc == "enc_on"){
				console.log("enc == enc_on 진입");
				m_enc = "on";
			}else{
				console.log("enc != enc_on 진입");
				m_enc = "off";
			}
			
			$
					.post(
							"/loginCheck",
							{
								member_id : member_id,
								m_pass : m_pass,
								m_enc : m_enc
							},
							function(data) {
								console.log("data : "+data);
								if (data == 1) {
									if ($('#long_login').is(":checked")) {
										const text = '<input type="hidden" name="long_login" value="on">';
										$('#form').append(text);
									}else if($('#long_login').is(":checked") == false){
										const text = '<input type="hidden" name="long_login" value="off">';
										$('#form').append(text);
									}
									$('#form').submit(); 
									//$("input[name=chkid]").val("");
								} else if (data == 0) {
									$("#incorrect")
											.html(
													"<font size='2' color='red'>정보가 일치하지 않습니다.</font>");
									return false;
								}
							});

		}
	</script>
</body>
</html>
