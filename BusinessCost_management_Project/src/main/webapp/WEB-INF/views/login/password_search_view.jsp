<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>어깨동무 게시판</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/popper.min.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/validity.js" type="text/javascript"></script>
<script src="./js/jquery.cookie.js" type="text/javascript"></script>
<script src="./js/cookie_login.js" type="text/javascript"></script>
<script src="./js/jquery.placeholder.min.js" type="text/javascript"></script>
<script src="./js/placeholder_foce.js" type="text/javascript"></script>
</head>
<body>

	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-6"></div>
			<div class="d-flex justify-content-between">
				<div id="toggle" class="navbar-collapse collapse">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown mr-3">
							<div class="py-2">
								<a href="./LoginView.me" class="nav-link text-white"> 로그인 </a>
							</div>
					</ul>
				</div>
			</div>
		</div>
	</nav>

	<section id="actions" class="py-4 mb-4 bg-light">
		<div class="container">
			<div class="row"></div>
		</div>
	</section>
	<section id="login">
		<div class="container">
			<div class="row">
				<div class="col-9 mx-auto">
					<div class="card">
						<div class="card-header text-center">
							<h1>비밀번호 찾기 결과</h1>
						</div>
						<div class="card-body">
							<div class="row  pt-3 pb-1 justify-content-center">
								<div class="col col-sm-8 text_strong text-center">검색한
									비밀번호의 정보입니다.</div>
							</div>
							<div class="row pb-1 justify-content-center">
								<div class="col-10 col-sm-8">
									<hr class="list_hr">
								</div>
							</div>

							<c:choose>
								<c:when test="${!empty password}">
									<div class="row pb-1 justify-content-center">
										<p class="text-success">
											찾으시는 비밀번호는 <b class="text-info">${password}</b> 입니다.
										</p>

									</div>
								</c:when>
								<c:otherwise>
									<div class="row pb-1 justify-content-center">
										<p class="text-danger">찾으시는 비밀번호가 존재하지 않습니다.</p>

									</div>
								</c:otherwise>
							</c:choose>
							<div class="row pb-1 justify-content-center">
								<div class="col-10 col-sm-8">
									<hr class="base_hr">
								</div>
							</div>
						</div>
					</div>
					<div class="col-4 mx-auto py-3 mb-3">
						<div>
							<span>
								<button type="button" class="btn btn-outline-success"
									onclick="location.href='./IdSearchView.me'">아이디 찾기</button>
							</span> <span>
								<button type="button" class="btn btn-outline-info"
									onclick="location.href='./MemberInsertView.me'">회원 가입
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer id="main-footer" class="bg-secondary text-white mt-4 p-4">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="lead text-center">노인일자리 사업비 관리</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>