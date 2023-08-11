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
<title>담당자 회원가입</title>
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
		$('#adminBirthday').datepicker({
			format : "yyyymmdd",
			autoclose : true, /* 날짜 선택 시 날짜 선택기를 자동으로 닫습니다. */
			daysOfWeekDisabled : [ 0, 6 ], /* 일요일(0) 및 토요일(6) 선택을 비활성화합니다 */
			templates : {
				leftArrow : '<i class="fa fa-caret-left"></i>',
				rightArrow : '<i class="fa fa-caret-right"></i>'
			},
			showWeekDays : true, /* datepicker 헤더에 요일을 표시합니다. */
			todayHighlight : true,/* 현재 날짜를 강조 표시합니다. */
			toggleActive : true, /* 선택한 날짜의 활성 상태를 토글합니다. */
			weekStart : 0, /* 일요일(0)을 주의 첫 번째 요일로 설정합니다. */
			language : "ko" /* 현지화를 위해 언어를 한국어로 설정합니다. */
		});
	});
</script>
<!-- <script type="text/javascript">
	$(function() {

		$("#dbidCheck").click(function() {

			var id = $('#userID').val();/* id="userID" 로 선언되어있는곳에서 입력한 값을  id(변수의 역할)로 저장한다.*/

			$.ajax({
				url : './IdCheck',
				type : 'get',

				data : {
					"userID" : id
				/* 위에서  var id = $('#userID').val(); 이렇게 선언해줬던것을 userID로 선언해준거임*/
				},
				success : function(result) {

					console.log("아이디 값 - " + result);

					//alert(result);
					/* if ($.trim(result) == 1) { *//* result가 1이거나(중복되는거=값있는거), 1이 아니거나(사용가능한거=값 없는거) */
					if (result == 1) {
						alert("이미 등록된 아이디입니다.");
						$("#userID").focus();
					} else {
						alert("등록할 수 있는 아이디입니다.");
						$('#idCheck').val("1");
						$("#password").focus();
					}
				}
			});
		});
		$("input[id='userID']").on("change", function() {

			$("#idCheck").val(0);

			console.log("■■■■■ 체크값 - " + $("#idCheck").val());

		});

	});
</script> -->

<script type="text/javascript">
	function duplicate() {
		var userID = $("#userID").val();

		var submitObj = new Object();
		submitObj.userID = userID;

		$.ajax({
			url : "./IdCheck",
			type : "POST",
			contentType : "application/json; charset-UTF-8",
			data : JSON.stringify(submitObj),
			dataType : "json"
		}).done(function(resObject) {
			if (resObject.res == "ok") {
				if (resObject.idCheck == 0) {
					alert("사용할 수 있는 아이디입니다.");
					$("#userID_yn").val("Y");
				} else {
					alert("중복된 아이디 입니다.");
					$("#userID_yn").val("N");
				}
			}

		}).fail(function(e) {
			alert("등록 시도에 실패하였습니다." + e);
		}).always(function() {
			pass = false;
		});

	}
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
	<!-- 	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-5">
				<h1>담당자 회원가입</h1>
			</div>

		</div>
	</nav> -->



	<header id="main-header" class="py-2 bg-secondary"> </header>
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
							<h1 class="text-center">담당자 회원가입</h1>
						</div>
						<div class="card-body mx-auto">
							<form method="post" id="signupForm" class=""
								enctype="application/x-www-form-urlencoded">
								<input type="hidden" id="userID_yn" name="userID_yn" value="N"/>
								<fieldset>
									<hr>
									<div class="col col-md-12">
										<div class="form-group row">
											<label for="userID" class="col-4 col-form-label pr-0">
												아이디 </label>
											<div class="col-8 pl-0">
												<div class="row">
													<div class="col-7">
														<input type="text" name="userID" id="userID"
															class="form-control">
													</div>
													<!-- <div class="pl-0">
														<button type="button" class="btn btn-outline-secondary"
															id="dbidCheck">중복체크</button>
														<button type="button" class="btn btn-outline-secondary"
															id="dbidCheck">중복체크</button>
														<input type="hidden" name="idCheck" id="idCheck">
													</div> -->

													<div class="col-sm-4 mb-3 mb-sm-0">
														<a href="#" class="btn btn-success btn-icon-split"
															style="text-align: center;"
															onclick="duplicate(); return false;"> <span
															class="icon text-white-30"> <i
																class="fas fa-check"></i>

														</span> <span class="text">중복체크</span>
														</a>
													</div>


												</div>
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label for="password" class="col-4 col-form-label pr-0">
											비밀번호 </label>
										<div class="col-8 pl-0">
											<input type="password" name="password" id="password"
												class="form-control">
										</div>
									</div>

									<div class="form-group row">
										<label for="adminName" class="col-4 col-form-label pr-0">
											담당자명 </label>
										<div class="col-8 pl-0">
											<input type="text" name="adminName" id="adminName"
												class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label for="adminBirthday" class="col-4 col-form-label pr-0">
											생년월일 </label>
										<div class="col-8 pl-0">
											<input type="text" name="adminBirthday" id="adminBirthday"
												class="form-control">
										</div>
									</div>

									<div class="form-group row">
										<label for="adminPhonenum" class="col-4 col-form-label pr-0">
											전화번호 </label>
										<div class="col-8 pl-0">
											<input type="text" name="adminPhonenum" id="adminPhonenum"
												class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label for="company" class="col-4 col-form-label pr-0">
											회사명 </label>
										<div class="col-8 pl-0">
											<input type="text" name="company" id="company"
												class="form-control">
										</div>
									</div>

									<div class="form-group row">
										<label for="jobManager" class="col-4 col-form-label pr-0">
											일자리담당 여부 </label>
										<div class="col-8 pl-0">
											<select name="jobManager" id="jobManager"
												class="form-control">
												<option>일자리담당 여부를 선택하세요.</option>
												<option value="일자리담당">일자리담당</option>
												<option value="퇴사/부서이동">퇴사/부서이동</option>
											</select>
										</div>
									</div>

									<div class="form-group row">
										<label for="businessType" class="col-4 col-form-label pr-0">
											사업 </label>
										<div class="col-8 pl-0">
											<select name="businessType" id="businessType"
												class="form-control">
												<option>담당사업을 선택하세요.</option>
												<option value="공익형">공익형</option>
												<option value="시장형">시장형</option>
												<option value="사회서비스형">사회서비스형</option>
											</select>
										</div>
									</div>


									<hr>
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
						</div> <!-- class="card-body mx-auto" 종료 -->
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