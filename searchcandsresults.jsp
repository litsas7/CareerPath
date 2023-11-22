<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file = "authenticationC.jsp" %>
<%
UserDAO userdao = new UserDAO();
String surname = request.getParameter("surname");
List<User> users = userdao.searchCands(surname);
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
				<h1>Canditates matchng your search</h1>
			</div>
			<!--container-->
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-condensed table-hover">
                            <tr class="info">
                                <th>Username</th>
                                <th>Bachelor's degree</th>
                            </tr>
                            <%
                            for (User user: users) { %>
                            <tr>
                                <td><a target="_blank" href="http://ism.dmst.aueb.gr/ismgroup79/userprofile.jsp?username=<%=user.getUsername()%>">
                                    <%=user.getUsername() %>
                                </td>
                                <td><%=user.getBachelor() %></td>
                            </tr>
                            <%
                            }
                            %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--/container-->
        <%@ include file = "footer.jsp" %>
    </body>
</html>