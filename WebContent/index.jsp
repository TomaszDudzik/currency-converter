<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	<form class="form-horizontal">
		<h1>
			<p class="text-center">Currency Converter</p>
		</h1>
		<div class="form-group">
			<label class="col-sm-3 control-label">Currency</label>
			<div class="col-sm-6">
				<input type="text" class="form-control"
					placeholder="Provide currency">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">From Currency</label>
			<div class="col-sm-2">
				<select class="form-control">
					<option>EUR</option>
					<option>PLN</option>
					<option>USD</option>
				</select>
			</div>
			<label class="col-sm-2 control-label">To Currency</label>
			<div class="col-sm-2">
				<select class="form-control">
					<option>EUR</option>
					<option>PLN</option>
					<option>USD</option>
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
				<input type="text" class="form-control" placeholder="">
			</div>
		</div>
	</form>
</body>
</html>