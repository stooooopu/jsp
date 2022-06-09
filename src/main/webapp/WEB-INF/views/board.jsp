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
		<h3>${data }</h3>
		<h3>${data.list }</h3> -->
	<!-- 문제. 테이블에 데이터 넣기  -->
	<button type="button" onclick="doLogout()">logout</button>
	<h1>${userId} 님 환영해용</h1>
	<input id="userNo" type="hidden" value="${userNo}" />
	<h3>${data.size}</h3>
	<table> 
		<thead>
			<tr>
			    <th>Company</th>
			    <th>Contact</th>
			    <th>Country</th>
	 		</tr>
		</thead>
		
	 	<tbody>
	 		<c:choose>
	 			<c:when test="${fn:length(data.list) > 0 }">
	 				<c:forEach items="${data.list}" var="item">
				 		<tr>
						    <td>${item.Company}</td>
						    <td>${item.Contact}</td>
						    <td>${item.Country}</td>
		  				</tr>
					</c:forEach>
	 			</c:when>
	 			<c:otherwise>
	 				<tr>
					    <td colspan="3">데이터가 없습니다</td>
	  				</tr>
	 			</c:otherwise>
	 		</c:choose>
		 	
	 	</tbody>
	</table>
</body>
<script type="text/javascript">
	function doLogout(){
		location.href = "logout";
	}
</script>

</html>