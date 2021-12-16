<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/partials/header.jsp"></jsp:include>

	<main class="container">

		<c:if test="${type != null && !type.isValid()}">
			<div class="alert alert-danger">
				<p>Se encontraron errores al actualizar el tipo.</p>
			</div>
		</c:if>

		<form action="/turismo/types/edit.do" method="post">
			<input type="hidden" name="id" value="${type}">
			<jsp:include page="/views/types/form.jsp"></jsp:include>
		</form>
	</main>
</body>
</html>
