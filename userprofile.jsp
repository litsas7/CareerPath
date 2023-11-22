<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%
UserDAO userdao = new UserDAO();
String username = (String)request.getParameter("username");
User user = userdao.findUser(username);
%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file = "header.jsp" %>
	
	<body>
        <%@ include file = "navbar.jsp" %>
        <div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>CareerPath</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Canditate's profile</h1>
			</div>
			
		
            <div class="row">

                <div class="col-xs-12">
                    <ul>
            
                        <li>Name: <%=user.getName() %></li>
                        <li>Surname: <%=user.getSurname() %></li>  
                        <li>Email: <%=user.getEmail() %></li>
                        <li>Username: <%=user.getUsername() %></li>
                        <li>Bachelor's degree: <%=user.getBachelor() %></li>
                        <li>Working experience: <%=user.getYears() %></li>
                        <li>Age: <%=user.getAge() %></li> 
                    
                    </ul>

                </div>

            </div>        
        </div>
        <!--/container-->

        <!--footer-->
        <%@ include file = "footer.jsp"%>
        <!--/footer-->

    </body>
</html>