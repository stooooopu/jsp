<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Study!</title>
</head>
<body>
	<h1>HOME 화면</h1>
	<button onclick="movePage()" type="button">게시판 화면으로 이동</button>
</body>
<script type="text/javascript">
	// "/board"가 가능한 이유는 java에 있는 모든것은 자신의 자원이라고 생각
	function movePage(){
		location.href = "/board" // controller의 주소를 입력하면 됨	
	}
</script>
</html>