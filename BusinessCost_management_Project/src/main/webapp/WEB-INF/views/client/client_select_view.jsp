<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>참여자 진행 현황</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$("#limit").change(function() {
			location.href = "./MemberSelect.me?limit=" + $(this).val();
		});
		if ("${!empty limit}") {
			$("#limit").val("${limit}").prop('selected', true);
		}
		;
	});
</script>
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
			<div class="col-md-3">
				<h1>참여자 진행 현황</h1>
			</div>

		</div>
	</nav>
	
	<header id="main-header" class="py-2 bg-secondary"> </header>
	<section id="search" class="py-3 mb-3 bg-light">
		<div class="container">
			<div class="row col-md-12">
				<div class="col-md-6 ml-auto">
					<form action="./MemberSearch.me" method="post" name="searchForm" id="signupForm"
						enctype="application/x-www-form-urlencoded">
						<fieldset>
							<div class="input-group">
								<select name="limit" id="limit" class="form-control mr-sm-1">
									<option value="10">10명씩 보기
									<option value="20">20명씩 보기
								</select> <input type="search" id="keyword" name="keyword" class="form-control mr-sm-1"
									placeholder="아이디 입력">
								<button class="btn btn-outline-success" type="submit">
									<i class="fas fa-search mr-sm-1"></i>검색
								</button>
							</div>
						</fieldset>
					</form>
				</div>
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
								<i class="fas fa-users-cog mr-sm-1"></i>회원 목록
							</h3>
							<p align="right">전체 회원: ${memberCount}명</p>

						</div>
						<table class="table table-bordered">
							<thead class="thead-light">
								<tr class="text-center">
									<th>번호</th>
									<th>아이디</th>
									<th>이름</th>
									<th>이메일</th>
									<th>나이</th>

									<th>생일</th>
									<th>가입일</th>
									<th>성별</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${listCount > 0}">
										<c:forEach var="arrayList" items="${arrayList}">
											<tr class="text-center">
												<td>${arrayList.num}</td>
												<td><a href="./MemberSelectDetail.me?id=${arrayList.id}">${arrayList.id}</a></td>
												<td><c:set var="now" value="<%=new java.util.Date()%>" /> <fmt:formatDate
														var="nowDay" value="${now}" type="date" pattern="yyyy-MM-dd" /> <c:if
														test="${arrayList.joinday == nowDay}">
														<span class="badge badge-danger mr-sm-1"> new </span>
													</c:if> ${arrayList.name}</td>
												<td>${arrayList.email}</td>
												<td>${arrayList.age}</td>
												<td>${arrayList.birthday}</td>
												<td>${arrayList.joinday}</td>
												<td>${arrayList.gender}</td>
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
						</table>
						<nav class="ml-4">
							<ul class="pagination justify-content-center">
								<c:choose>
									<c:when test="${page <= 1}">
										<li class="page-item disabled"><a class="page-link">이전</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a href="./MemberSelect.me?page=${page-1}&limit=${limit}"
											class="page-link">이전</a></li>
									</c:otherwise>
								</c:choose>
								<c:forEach var="start" begin="${startpage}" end="${endpage}" step="1">
									<c:choose>
										<c:when test="${start==page}">
											<li class="page-item active"><a class="page-link">${start}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a href="./MemberSelect.me?page=${start}&limit=${limit}"
												class="page-link">${start}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:choose>
									<c:when test="${page >= maxpage}">
										<li class="page-item"><a class="page-link"> 다음 </a></li>
									</c:when>
									<c:otherwise>
										<a href="./MemberSelect.me?page=${page+1}&limit=${limit}">
											<li class="page-item"><a href="./MemberSelect.me?page=${page+1}&limit=${limit}"
												class="page-link"> 다음 </a></li>
										</a>
									</c:otherwise>
								</c:choose>
							</ul>

						</nav>
						<nav class="navbar justify-content-end">
							<div class="btn-group">
								<button type="button" class="btn btn-outline-info mr-sm-1"
									onclick="location.href='./MemberInsertView.me'">
									<i class="fas fa-user-edit mr-sm-1"></i>회원 등록
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