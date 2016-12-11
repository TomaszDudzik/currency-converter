<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kalkulator walut - Version 1.0</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<!-- te dziwne twory to po to aby nie wpisywac Front czyli nazwa projektu -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body class="nasz-body">
	<h1>
		<strong><p class="text-center">Currency Converter</p></strong>
	</h1>
	<form action="${pageContext.request.contextPath}/currencies"
		method="post" class="form-horizontal">
		<div class="form-group">
			<label class="col-sm-3 control-label">Currency</label>
			<div class="col-sm-6">
				<input value="${amount}" type="text" class="form-control"
					placeholder="Provide currency" name="amount">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">From Currency</label>
			<div class="col-sm-2">
				<select class="form-control" name="from">
					<option value="">- Wybierz walute -</option>
					<c:forEach var="currency" items="${currencies}">
						<option <c:if test="${from == currency}">selected</c:if>
							value="${currency}">${currency}</option>
					</c:forEach>
				</select>
			</div>
			<label class="col-sm-2 control-label">To Currency</label>
			<div class="col-sm-2">
				<select class="form-control" name="to">
					<option value="">- Wybierz walute -</option>
					<c:forEach var="currency" items="${currencies}">
						<option <c:if test="${to == currency}">selected</c:if>
							value="${currency}">${currency}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-3 col-sm-10">
				<button type="submit" class="btn btn-primary">Convert</button>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">Value</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" value="${amount} ${from} ${equal} ${result} ${to}">
			</div>
		</div>
	</form>
</body>
</html>