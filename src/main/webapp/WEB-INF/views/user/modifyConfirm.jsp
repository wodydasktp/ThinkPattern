<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Elements - Landed by HTML5 UP</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/menu.jsp"%>
</head>
<body>
	<div class="container body">
		<div id="page-wrapper">
			<form role="form"  method="post">
				<div>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				
					<div>id
					<input type = "text" value="${id}" readonly="readonly">	
					</div>
					<br/>
					<div>password
						<input type="password" name="password"  id= "pw" placeholder="Enter Pw">		
					</div>
				</div>
			</form>
		
		
		
		
		
		
		
		</div>

	</div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</html>