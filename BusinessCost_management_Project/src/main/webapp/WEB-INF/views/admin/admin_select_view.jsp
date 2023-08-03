<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>담당자 목록</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
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
					<li class="nav-item dropdown mr-3"><a class="navbar-brand"
						data-toggle="dropdown">남정우(중랑노인복지관) </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="./#"> 로그아웃 </a> <a
								class="dropdown-item"
								href="./AdminSelectDetail?userID=${sessionScope.userID}">
								개인정보변경 </a> <a class="dropdown-item" href="./AdminSelectAll">
								담당자목록 </a>
						</div>
				</ul>
			</div>
		</div>
	</nav>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-5">
				<h1>담당자 목록</h1>
			</div>

		</div>
	</nav>

	<header id="main-header" class="py-2 bg-secondary"> </header>
	<section id="search" class="py-3 mb-3 bg-light">
		<div class="container">
			<div class="row col-md-12">
				<div class="col-md-6 ml-auto"></div>
			</div>
		</div>
	</section>
	<section id="member">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="text-muted">
								<!-- 회사는 로그인한사람의 회사가 보여지게하기  -->
								<i class="fas fa-users-cog mr-sm-1"></i>(중랑노인복지관)노인일자리 담당자 목록
							</h3>
							<p align="right">전체 담당자: ${adminCount}명</p>

						</div>
						<%-- 	<table class="table table-bordered">
							<thead class="thead-light">
								<tr class="text-center">
									<th>번호</th>
									<th>담당자명</th>
									<th>생년월일</th>
									<th>일자리담당 여부</th>
									<th>사업</th>
									<th>전화번호</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${adminCount > 0}">
										<c:forEach var="adminList" items="${adminList}">
											<tr class="text-center">
												<td>${adminList.adminNum}</td>
							
												<td><a href="./AdminSelectDetail?userID=${adminList.userID}">${adminList.adminName}</a></td>
												<td>${adminList.adminBirthday}</td>
												<td>${adminList.jobManager}</td>
												<td>${adminList.businessType}</td>
												<td>${adminList.adminPhonenum}</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="8" align="center">등록된 회원이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table> --%>
						<table class="table table-bordered">
							<thead class="thead-light">
								<tr class="text-center">
									<th>번호</th>
									<th>담당자명</th>
									<th>생년월일</th>
									<th>일자리담당 여부</th>
									<th>사업</th>
									<th>전화번호</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${adminCount > 0}">
										<c:forEach var="adminList" items="${adminList}">
											<c:set var="rowColor"
												value="${adminList.jobManager eq '퇴사/부서이동' ? '#f2f2f2' : '#ffffff'}" />

											<tr class="text-center" style="background-color: ${rowColor}">
												<td>${adminList.adminNum}</td>
												<td><a
													href="./AdminSelectDetail?userID=${adminList.userID}">${adminList.adminName}</a></td>
												<td>${adminList.adminBirthday}</td>
												<td>${adminList.jobManager}</td>
												<td>${adminList.businessType}</td>
												<td>${adminList.adminPhonenum}</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="6" align="center">등록된 회원이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>

						<nav class="navbar justify-content-end">
							<div class="btn-group">
								<button type="button" class="btn btn-outline-info mr-sm-1"
									onclick="location.href='./AdminInsert'">
									<i class="fas fa-user-edit mr-sm-1"></i>담당자 등록
								</button>
							</div>
						</nav>
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