<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function addUser() {
	document.fn.action="reg";
	document.fn.submit();
	}
	
	function deleteUser () {
	document.fn.action="delete";
		document.fn.submit();
	}
	
	function editUser() {
		document.fn.action="edit";
		document.fn.submit();
	}

</script>
<body style="background-image: url(http://wboc-digital.s3.amazonaws.com/production/sites/wboc/wp-content/uploads/2015/01/18130834/Grey-website-background.png); color: gold;">

<h1>
		<marquee>Successfully Login...!</marquee>
	</h1>
	
	<form name="fn">
	<table border="1" align="center" style="width: 100%" >
		<tbody align="center">
			<th></th>
			<th>Id</th>			
			<th>Name</th>
			<th>Uname</th>
			<th>Password</th>
			<th>City</th>
			<c:forEach items="${data}" var="st">
				<tr >
					<td> <input type="radio" name="id" value="${st.id}"> </td>
					<td>${st.id}</td>
					<td>${st.name}</td>
					<td>${st.uname}</td>
					<td>${st.password}</td>
					<td>${st.address}</td>					
				</tr>
			</c:forEach>			
			<tr >
			 <td></td>
			 <td></td>
			 <td> <input type="button" value="Add" onclick="addUser()"> </td>
			 <td><input type="button" value="Edit" onclick="editUser()" ></td>
			 <td><input type="button" value="Delete" onclick="deleteUser()"></td>
			 <td></td>
			</tr>
		</tbody>
	</table>
	</form>
</body>
</html>