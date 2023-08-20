<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%
	session.removeAttribute("id");
%> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
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

	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white"></nav>

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
							<h1 class="loginFont">LOGIN</h1>
						</div>
						<div class="card-body">
							<form action="./Login" method="post" id="signupForm"
								enctype="application/x-www-form-urlencoded">
								<fieldset>

									<div class="form-group">
										<label for="userID">ID</label> <input type="text" name="userID"
											id="userID" class="form-control" placeholder="아이디">
									</div>

									<div class="form-group">
										<label for="password">PASSWORD</label> <input type="password"
											name="password" id="password" class="form-control"
											placeholder="비밀번호">
									</div>

									<button type="submit" id="register"
										class="btn btn-info btn-block">로그인</button>

									<div class="col-6 mx-auto py-3 mb-3">
										<div>
											<span>
												<button type="button" class="btn btn-outline-success"
													onclick="location.href='#'">아이디 찾기</button>
											</span> <span> |
												<button type="button" class="btn btn-outline-warning"
													onclick="location.href='#'">비밀번호 찾기</button>
											</span> <span> |
												<button type="button" class="btn btn-outline-info"
													onclick="location.href='#'">회원 가입</button>
											</span>
										</div>
									</div>
								</fieldset>
							</form>
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