<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Study!</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

	<!-- 모르겠으면 일단 출력 해 보기
		<h1>${data.list[0]}</h1> -->
	<!-- 문제. 테이블에 데이터 넣기  -->
	<table>
		<thead>
			<tr>
			    <th>Company</th>
			    <th>Contact</th>
			    <th>Country</th>
	 		</tr>
		</thead>
		
	 	<tbody>
	 		<c:forEach items="${data.list}" var="item">
		 		<tr>
				    <td>${item.Company}</td>
				    <td>${item.Contact}</td>
				    <td>${item.Country}</td>
  				</tr>
		 	
			</c:forEach>
	 	</tbody>
	</table>
</body>
</html>