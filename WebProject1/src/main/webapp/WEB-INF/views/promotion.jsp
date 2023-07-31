<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션 페이지</title>
<!-- jquery cdn -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
	crossorigin="anonymous"></script>
<!-- 부트스트랩 cdn -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<!-- 폰트 설정 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap"
	rel="stylesheet">
<!-- 아이콘 cdn-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<style>
body {
	font-family: 'Hahmlet', serif;
}

.card-img-top {
	width: 100%;
	height: 100%;
	object-fit: contain;
}

.custom-main-padding {
	padding-bottom: 200px;
}

.card-body {
	height: 100%;
}
</style>
<!-- 로딩 이벤트 -->
<script type="text/javascript" src="resources/js/loading.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<header align="center">
		<h1>익사이팅과 함께 진행하는 프로모션들!</h1>
		<p>익사이팅에 찾아주셔서 감사합니다! 저희는 세계 각국의 놀이공원과 프로모션을 진행하고 있습니다! 천천히 둘러보세요!</p>
	</header>
	<c:forEach items="${data}" var="data">
		<main class="container custom-main-padding border-bottom">
			<div class="container">
				<div class="card-deck">
					<div class="card">
						<img class="card-img-top" src="${data.promotion_img }"
							alt="Ride Image">
						<div class="card-body">
							<h5 class="card-title">${data.promotion_content }</h5>
							<p class="card-text">${data.promotion_name }</p>
							<button class="btn btn-primary" type="button"
							 onclick="location.href='promotionprice?promotion_id=${data.promotion_id}'">보러 가기</button>
						</div>
					</div>
				</div>
			</div>
		</main>
	</c:forEach>
</body>
<jsp:include page="footer.jsp" />
</html>