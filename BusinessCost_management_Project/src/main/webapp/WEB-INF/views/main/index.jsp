<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>노인일자리 사업비 관리</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/popper.min.js" type="text/javascript"></script>
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
					<li><a href="./main" class="navbar-brand"> Main </a></li>
				</ul>

				<!-- 메뉴 로그인 담당자 정보 -->
				<ul class="navbar-nav py-3 mb-3 pl-4 pr-3">
					<li class="nav-item dropdown mr-3"><a class="navbar-brand"
						data-toggle="dropdown">남정우(중랑노인복지관) ${sessionScope.adminName}(${sessionScope.company})</a>

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

	<section id="actions" class="py-4 mb-4 bg-light">
		<!-- 색상을 하얀색으로 바꾸고싶은데 아니면 이걸 지우고 여백을 만들거나 이거 지우면 버튼이 너무 위쪽으로 바로옴 -->
		<div class="container">
			<div class="row"></div>
		</div>
	</section>

	<section id="posts">
		<div class="container">


			<div class="row justify-content-center">
				<!-- 공익형 정보 -->
				<div class="col-md-3">
					<div class="card text-center bg-primary text-white mb-3">
						<div class="card-body">
							<!-- 크기는 두고 배경 없에고, 태두리 검은색으로 바꾸기 -->
							<h5>
								<strong>공익형 (50,000,000)</strong>
							</h5>
							<table>
								<thead style="display: none;">
									<tr>
										<th>분류</th>
										<th>구분</th>
										<th>내용</th>
										<th>단위</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="text-align: left;">인원</td>
										<td>:</td>
										<td style="text-align: right;">10</td>
										<td style="text-align: right;">명</td>
									</tr>
									<tr>
										<td style="text-align: left;">참여자 임금</td>
										<td>:</td>
										<td style="text-align: right;">20,000,000</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">담당자 임금</td>
										<td>:</td>
										<td style="text-align: right;">25,000,000</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">사업진행비</td>
										<td>:</td>
										<td style="text-align: right;">5,000,000</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">진행률</td>
										<td>:</td>
										<td style="text-align: right;">5.0</td>
										<td style="text-align: right;">%</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- 시장형 정보 -->
				<div class="col-md-3">
					<div class="card text-center bg-primary text-white mb-3">
						<div class="card-body">
							<h5>
								<strong>시장형 (45,000,0000)</strong>
							</h5>
							<table>
								<thead style="display: none;">
									<tr>
										<th>분류</th>
										<th>구분</th>
										<th>내용</th>
										<th>단위</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="text-align: left;">인원</td>
										<td>:</td>
										<td style="text-align: right;">10</td>
										<td style="text-align: right;">명</td>
									</tr>
									<tr>
										<td style="text-align: left;">참여자 임금</td>
										<td>:</td>
										<td style="text-align: right;">15,000,000</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">담당자 임금</td>
										<td>:</td>
										<td style="text-align: right;">25,000,000</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">사업진행비</td>
										<td>:</td>
										<td style="text-align: right;">5,000,000</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">진행률</td>
										<td>:</td>
										<td style="text-align: right;">0.0</td>
										<td style="text-align: right;">%</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
				<!-- 사회서비스형 정보 -->
								<div class="col-md-3">
					<div class="card text-center bg-primary text-white mb-3">
						<div class="card-body">
							<h5>
								<strong>사회서비스형 (0)</strong>
							</h5>
							<table>
								<thead style="display: none;">
									<tr>
										<th>분류</th>
										<th>구분</th>
										<th>내용</th>
										<th>단위</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="text-align: left;">인원</td>
										<td>:</td>
										<td style="text-align: right;">0</td>
										<td style="text-align: right;">명</td>
									</tr>
									<tr>
										<td style="text-align: left;">참여자 임금</td>
										<td>:</td>
										<td style="text-align: right;">0</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">담당자 임금</td>
										<td>:</td>
										<td style="text-align: right;">0</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">사업진행비</td>
										<td>:</td>
										<td style="text-align: right;">0</td>
										<td style="text-align: right;">원</td>
									</tr>
									<tr>
										<td style="text-align: left;">진행률</td>
										<td>:</td>
										<td style="text-align: right;">0.0</td>
										<td style="text-align: right;">%</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>

			<div class="row justify-content-center">
				<!-- 메뉴 버튼1 -->
				<div class="col-md-3">
					<div class="card text-center bg-primary text-white mb-3">
						<div class="card-body">
							<h3>사업비 진행 현황</h3>
							<h4 class="display-4">
								<i class="fas fa-user-tag"></i>
							</h4>
							<button type="button" class="btn btn-outline-light btn-sm"
								onclick="location.href='#'">클릭</button>

						</div>
					</div>
				</div>

				<!-- 메뉴 버튼 2 -->
				<div class="col-md-3">
					<div class="card text-center bg-success text-white mb-3">
						<div class="card-body">
							<h3>참여자 진행 현황</h3>
							<h4 class="display-4">
								<i class="fas fa-users"></i>
							</h4>
							<button type="button" class="btn btn-outline-light btn-sm"
								onclick="location.href='#'">클릭</button>
						</div>
					</div>
				</div>

				<!-- 메뉴 버튼 3 -->
				<div class="col-md-3">
					<div class="card text-center bg-warning text-white mb-3">
						<div class="card-body">
							<h3>일자리 담당자</h3>
							<h4 class="display-4">
								<i class="fas fa-user"></i>
							</h4>
							<button type="button" class="btn btn-outline-light btn-sm"
								onclick="location.href='./AdminSelectAll'">클릭</button>
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