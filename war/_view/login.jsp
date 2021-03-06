<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<title>Login</title>
		
		<link rel="stylesheet" type="text/css" href="_view/style.css">
		
		<style type="text/css">
		.error {
			color: red;
			font-family: "Comic Sans MS", cursive, sans-serif;
		}
		
		td.label {
			text-align: left;
			font-family: "Comic Sans MS", cursive, sans-serif;
		}
		</style>
	</head>

	<body>
		<div class="cursor">
			<c:if test="${! empty errorMessage}">
				<div class="error">${errorMessage}</div>
			</c:if>
			
			<div id="background">
	    		<img src="http://www.wallcoo.net/flower/SZ_186_CG_Digital_Flowers/images/HS066_350AA.jpg" class="stretch" alt="" />
			</div>
			
			<div class="header"> 
				Photo/File Forum 
		    </div>   
		    
		    <div class="main_bar"> 
				Welcome! 
		    </div> 
		
			<div>
				<form action="${pageContext.servletContext.contextPath}/Login" method="post">
					<table>
						<tr>
							<td class="label">Username:</td>
							<td><input type="text" name="username" size="12" class="login_page" value="${game.value1} " /></td>
						</tr>
						<tr>
							<td class="label">Password:</td>
							<td><input type="text" name="password" size="12" class="login_page" value="${game.value2}" /></td>
						</tr>
					</table>
					
					<input type="Submit" name="login" value="Log In" class="login_page_button" class="login_page_button:hover">
				
				</form>
			</div>
		</div>
	</body>
</html>