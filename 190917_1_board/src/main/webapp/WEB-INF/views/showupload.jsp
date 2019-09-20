<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<c:forEach items="${savedNameList}" var="savedName">
		<c:choose>
			<c:when test="${fn:endsWith(savedName, '.jpg') || fn:endsWith(savedName, '.png') || fn:endsWith(savedName, '.jpeg') || fn:endsWith(savedName, '.gif')}">
				<img alt="one of the upload files" src="displayfile100?filename=${savedName}">
			</c:when>
			<c:otherwise>
				<img alt="add" src="/resources/test.png">
			</c:otherwise>
		</c:choose>
					
					
	</c:forEach>
</body>
</html>