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
	 <input id="userId" type="text" placeholder="Id를 입력하세요"/>
	 <input id="userPassword" type="password" placeholder="PW를 입력하세요"/>
	 <button type="button" onclick="doLogin()">login</button>
</body>
<script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
<script type="text/javascript">
	function doLogin(){
		// 바닐라자바스크립트 (순수 자바스크립트)
		var userId = document.getElementById('userId').value;
		var userPassword = document.getElementById('userPassword').value;
		// $('#userId').val()
		console.log(userId)
		console.log(userPassword)
		
		if(userId !== '' || userPassword !== ''){
			var jsonData = {
					userId : userId,
					userPassword : userPassword
		          }
			//ajax
			$.ajax({
	              url : '/login',
	              type : 'POST',
	              // postman에서 json선택하는게 밑에 contentType
	              contentType : 'application/json', // 서버에 json타입으로 보낼 예정(요청)
	              dataType : 'json', // 서버에 결과를 json으로 응답 받겠다
	              data: JSON.stringify(jsonData), // 이걸 안쓰면 jsonType이 아닌 문자로 인식
	              success : function(response){
	                console.log(response)
	                if(response){
	                	location.href="/board";
	                }
	              }
	            });
		}
		
	}
</script>
</html>