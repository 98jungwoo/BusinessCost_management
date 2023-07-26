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
<title>참여자 등록</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<link rel="stylesheet" href="./css/bootstrap-datepicker.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/popper.min.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/validity.js" type="text/javascript"></script>
<script src="./js/bootstrap-datepicker.js"></script>
<script src="./js/bootstrap-datepicker.ko.js"></script>
<script type="text/javascript">
	$(function() {
		$('#birthday').datepicker({
			format : "yyyymmdd",
			autoclose : true,
			daysOfWeekDisabled : [ 0, 6 ],
			templates : {
				leftArrow : '<i class="fa fa-caret-left"></i>',
				rightArrow : '<i class="fa fa-caret-right"></i>'
			},
			showWeekDays : true,
			todayHighlight : true,
			toggleActive : true,
			weekStart : 0,
			language : "ko"
		});
	});
</script>
<script type="text/javascript">
	$(function() {

		$("#dbidCheck").click(function() {
			var id = $('#id').val();
			$.ajax({
				url : './IdCheck.me',
				type : 'get',

				data : {
					id : id
				},
				success : function(result) {

					console.log("아이디 값 - " + result);
					//alert(result);
					if ($.trim(result) == 1) {
						alert("이미 등록된 아이디입니다.");
						$("#id").focus();
					} else {
						alert("등록할 수 있는 아이디입니다.");
						$('#idCheck').val("1");
						$("#name").focus();
					}
				}
			});
		});
		$("input[id='id']").on("change", function() {

			$("#idCheck").val(0);

			//console.log("1111체크값 - " + $("#idCheck").val());

		});

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
				<h1>참여자 등록</h1>
			</div>

		</div>
	</nav>
	
	
	
	<header id="main-header" class="py-2 bg-secondary"> </header>
	<section class="py-3 mb-3 bg-light">
		<div class="container">
			<div class="row col-md-12"></div>
		</div>
	</section>
	<section id="member">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h2 class="text-center"> 2023년도 사업비를 작성해주세요
							</h2>
						</div>
						<div class="card-body mx-auto">
							<form action="./MemberInsert.me" method="post" id="signupForm"
								class="" enctype="application/x-www-form-urlencoded">
								<fieldset>
										<div class="col col-md-12">
											<div class="form-group row">
												<label for="id" class="col-4 col-form-label pr-0"> <i
													class="fas fa-user-check mr-sm-1"></i> 아이디
												</label>
												<div class="col-8 pl-0">
													<div class="row">
														<div class="col-7">
															<input type="text" name="id" id="id" class="form-control">
														</div>
														<div class="pl-0">
															<button type="button" class="btn btn-outline-secondary"
																id="dbidCheck">중복체크</button>
															<input type="hidden" name="idCheck" id="idCheck">
														</div>
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="name" class="col-4 col-form-label pr-0">
													<i class="fas fa-user-plus mr-sm-1"></i> 이름
												</label>
												<div class="col-8 pl-0">
													<input type="text" name="name" id="name"
														class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label for="password" class="col-4 col-form-label pr-0">
													<i class="fas fa-unlock-alt mr-sm-1"></i> 비밀번호
												</label>
												<div class="col-8 pl-0">
													<input type="password" name="password" id="password"
														class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label for="pwdre" class="col-4 col-form-label pr-0">
													<i class="fas fa-lock mr-sm-1"></i> 비번확인
												</label>
												<div class="col-8 pl-0">
													<input type="password" name="pwdre" id="pwdre"
														class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label for="email" class="col-4 col-form-label pr-0">
													<i class="fas fa-envelope-open mr-sm-1"></i> 이메일
												</label>
												<div class="col-8 pl-0">
													<input type="email" name="email" id="email"
														class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label for="age" class="col-4 col-form-label pr-0">
													<i class="fas fa-user-clock mr-sm-1"></i> 나이
												</label>
												<div class="col-8 pl-0">
													<input type="text" name="age" id="age" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label for="gender" class="col-4 col-form-check-label pr-0">
													<i class="fas fa-restroom mr-sm-1"></i> 성별
												</label>
												<div class="col-md-7 form-check form-check-inline text-left">
													<input type="radio" name="gender" id="gender" value="m"
														class="form-check-input"> 남자 <input type="radio"
														name="gender" id="gender" value="f"
														class="ml-sm-3 form-check-input"> 여자
												</div>
											</div>
											<div class="form-group row">
												<label for="birthday" class="col-4 col-form-label pr-0">
													<i class="fas fa-birthday-cake mr-sm-2"></i> 생일
												</label>
												<div class="col-8 pl-0">
													<input type="text" name="birthday" id="birthday"
														class="form-control">
												</div>
											</div>
										</div>
									<nav class="navbar justify-content-end">
										<button type="submit" class="btn btn-outline-primary mr-sm-1">
											<i class="fas fa-save mr-sm-1"></i> 회원 등록
										</button>
										<button type="reset" id="clear"
											class="btn btn-outline-warning mr-sm-1">
											<i class="fas fa-share-square mr-sm-1"></i> 등록 취소
										</button>
									</nav>
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