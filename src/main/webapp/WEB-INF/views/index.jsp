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
	<h1>Hello World!</h1>
	<h3>${name}</h3>
	<h3>${phoneNum}</h3>
	<!-- c:if : jsp문법
			else없음 -->
	<c:if test="${phoneNum == 1234}">
		<h4>대한이 민국이 만세</h4>
	</c:if>
	
	<c:if test="${name.equals('지유')}">
		<h4>지나갑니다 비켜주세요</h4>
	</c:if>
	
	<!-- if else를 구현하고 싶을 때 -->
	<c:choose>
		<c:when test="${size < 100 }">
			<h1>사이즈 잘 맞으세여?</h1>
		</c:when>
		
		<c:otherwise>
			<h5>아님 안맞으세여...?</h5>
		</c:otherwise>
	</c:choose>
	
	<!-- JSP 반복문 -->
	<c:forEach items="${piano}" var="str">
		<h4>${str}</h4>
	</c:forEach>
	
	
	<c:forEach var="item" items="${actorList}">
		<h4>${item.age}, ${item.name}</h4>
	</c:forEach>
	
	<c:forEach items="${mapList}" var="item">
		<h4>${item.no}</h4>
	</c:forEach>
	
	<h1>${mapList[0].no}</h1>
</body>
</html>