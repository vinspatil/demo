<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url(http://wboc-digital.s3.amazonaws.com/production/sites/wboc/wp-content/uploads/2015/01/18130834/Grey-website-background.png); color: gold;">
<form action="update">
<div align="center">
<h1 style="color: red">Edit</h1>
<br><input type="text" name="id" value="${stu.id}"> <br>
<pre></pre>
<br><input type="text" name="name" value="${stu.name}"> <br>
<pre></pre>

<input type="text" name="uname" value="${stu.uname}"> <br>
<pre></pre>

<input type="text" name="password" value="${stu.password}" width="150px"> <br>
<pre></pre>

<input type="text" name="address" value="${stu.address}"> <br>
<pre></pre>
<input type="submit" value="Update" > <br>

</form>
</div>
</body>
</html>