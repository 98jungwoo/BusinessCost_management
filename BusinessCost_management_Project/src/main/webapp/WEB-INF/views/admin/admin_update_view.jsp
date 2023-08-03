<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>담당자 정보 수정</title>
</head>
<body>
<script type="text/javascript">
alert("${adminDTO.userID}님의 개인 정보를 수정하였습니다.")
location.href="./AdminSelectDetail?userID=${adminDTO.userID}";
</script>
</body>
</html>