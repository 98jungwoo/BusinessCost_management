<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:if test="${empty sessionScope.id}">
	<script type="text/javascript">
		location.href = "./LoginView.me"
	</script>
</c:if> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>담당자 정보 확인</title>
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
<script src="./js/bootstrap-datepicker.js"></script>
<script src="./js/bootstrap-datepicker.ko.js"></script>
<!-- <script type="text/javascript">
	function memberDelete() {
		if (confirm("${memberDTO.name}님 회원을 탈퇴 하시겠습니까?")) {
			location.href = "./MemberDelete.me?id=${memberDTO.id}"
		}
	}
</script> -->
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<!-- 메뉴를 왼쪽으로 하게 하기 위해서 생성  -->
			<div class="col-md-6"></div>

			<!-- 메뉴1 -->
			<div id="toggle" class="navbar-collapse collapse">
				<ul class="navbar-nav">
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown mr-3">
						<p class="nav-link dropdown-toggle" data-toggle="dropdown">
							사업비 진행 현황</p>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="./#?id=${sessionScope.id}">
								공익형 </a> <a class="dropdown-item" href="./#?id=${sessionScope.id}">
								시장형 </a> <a class="dropdown-item" href="./#?id=${sessionScope.id}">
								사회서비스형 </a>
						</div>
				</ul>

				<!-- 메뉴2 -->
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown mr-3">
						<p class="nav-link dropdown-toggle" data-toggle="dropdown">
							참여자 진행 현황</p>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="./#?id=${sessionScope.id}">
								공익형 </a> <a class="dropdown-item" href="./#?id=${sessionScope.id}">
								시장형 </a> <a class="dropdown-item" href="./#?id=${sessionScope.id}">
								사회서비스형 </a>
						</div>
				</ul>

				<!-- 메뉴3 -->
				<ul class="navbar-nav py-3 mb-3 pl-3 pr-3">
					<li><a href="./index.jsp" class="navbar-brand"> Main </a></li>
				</ul>

				<!-- 메뉴 로그인 담당자 정보 -->
				<ul class="navbar-nav py-3 mb-3 pl-4 pr-3">
					<li class="nav-item dropdown mr-3"><a href="./#"
						class="navbar-brand" data-toggle="dropdown">남정우(중랑노인복지관) </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="./#"> 로그아웃 </a> <a
								class="dropdown-item" href="./#?id=${sessionScope.id}">
								개인정보변경 </a> <a class="dropdown-item" href="./#"> 담장자목록 </a>
						</div>
				</ul>
			</div>
		</div>
	</nav>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-5">
				<h1>담당자 정보 확인</h1>
			</div>

		</div>
	</nav>
	<header id="main-header" class="py-2 bg-secondary"></header>
	<section class="py-3 mb-3 bg-light">
		<div class="container">
			<div class="row col-md-12"></div>
		</div>
	</section>
	<section id="member">
		<div class="container">
			<div class="row">
				<div class="col-md-8 mx-auto">
					<div class="card">
						<div class="card-header">
							<h3 class="text-muted">
								<i class="fas fa-user-shield mr-sm-1"></i> 회원 정보
							</h3>
						</div>
						<hr>
							<div class="row form-group">
								<div class="col-md-12" id="id" style="display: none;">
									<label class="member_label" for="adminNum">담당자 번호<em>*</em></label>
									<input type="text" id="adminNum" name="adminNum"
										class="form-control" value="${adminDTO.adminNum}" readonly>
								</div>
								<div class="col-md-12">
									<label class="member_label" for="adminName">담당자명<em>*</em></label>
									<input type="text" id="adminName" name="adminName"
										class="form-control" value="${adminDTO.adminName}" readonly>
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<label class="member_label" for="adminBirthday">생년월일</label> <input
										type="date" name="adminBirthday" id="adminBirthday"
										class="form-control" value="${adminDTO.adminBirthday}"
										readonly>
								</div>
							</div>
							
														<div class="row form-group">
								<div class="col-md-12">
									<label class="member_label" for="adminPhonenum"> 전화번호</label> <input
										type="text" name="adminPhonenum" id="adminPhonenum"
										class="form-control" value="${adminDTO.adminPhonenum}"
										readonly>
								</div>
							</div>
								<div class="row form-group">
								<div class="col-md-12">
									<label class="member_label" for="company">회사</label>
									<input type="text" id="company" name="company"
										class="form-control" value="${adminDTO.company}" readonly>
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<label class="member_label" for="jobManager">일자리 담당여부<em>*</em></label>
									<input type="text" id="jobManager" name="jobManager"
										class="form-control" value="${adminDTO.jobManager}" readonly>
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<label class="member_label" for="businessType">사업</label> <input
										type="text" name="businessType" id="businessType"
										class="form-control" value="${adminDTO.businessType}" readonly>
								</div>
							</div>

							<hr>
							<div class="form-group">
								<nav class="navbar justify-content-end">
									<button type="button" class="btn btn-outline-success mr-sm-1"
										onclick="location.href='./AdminSelectAll'">
										<i class="fas fa-user-tag mr-sm-1"></i> 담당자 목록
									</button>
									<button type="button" class="btn btn-outline-success mr-sm-1"
										onclick="location.href='./AdminUpdate?userID=${adminDTO.userID}'">
										<i class="fas fa-users-cog mr-sm-1"></i> 담당자 정보 수정
									</button>
								</nav>
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