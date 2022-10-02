<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body style="background-image: url(http://wboc-digital.s3.amazonaws.com/production/sites/wboc/wp-content/uploads/2015/01/18130834/Grey-website-background.png); color: gold;">

<form action="logincheck">
<div align="center">
<h1 style="color: red">login</h1>
<br><input type="text" name="uname" placeholder="Username" required="required"> <br>
<pre></pre>

<input type="text" name="password" placeholder="Password" required="required"> <br>
<pre></pre>
<input type="submit" value="login"> <br>
<span style="color: yelow">${msg} </span> <br>
<a href="reg" >click here to register</a>
</form>
</div>
</body>
</html>