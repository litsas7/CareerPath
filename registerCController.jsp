<%@ page import="java.io.*,java.util.*" %>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String surname = request.getParameter("surname");
String email = request.getParameter("email");
String cusername = request.getParameter("cusername");
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");

boolean correct = true;
if (name.length() < 3 || surname.length() < 3 || cusername.length() < 5 || password.length() < 5 || (!password.equals(confirm))) {
	correct = false;
} 
%>
<!DOCTYPE html>
<html>
    <%@ include file = "header.jsp" %>
  <body>
    <!-- container -->
    <div class="container theme-showcase" role="main">
		<!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <h1>CareerPath</h1>
        </div>
        <!-- Page Title -->
			<% if (correct) { %>
				<div class="page-header">
					<h1>Η εγγραφή ολοκληρώθηκε!</h1>
				</div>
			<% } else { %>
				<div class="page-header">
					<h1>Η φόρμα της εγγραφής έχει λανθασμένα πεδία</h1>
				</div>
			<% } %>
            <%
            if (correct) { %>
            <div class="alert alert-success" role="alert">Έχει σταλθεί μήνυμα επιβεβαίωσης στην ηλεκτρονική διεύθυνση που υποβάλλατε</div>
            <ol>
                <li>Name: <%=name%></li>
                <li>Surname: <%=surname%></li>
                <li>Email: <%=email%></li>
                <li>Username: <%=cusername%></li>
            </ol>
        <%
        Cuser cuser = new Cuser(name, surname, email, cusername, password);
        CuserDAO cuserdao = new CuserDAO();
        cuserdao.register(cuser);
        %>
        <a href="index.jsp" class="btn btn-secondary">Αρχική σελίδα</a>
        <%
        } else {   %>
            <div class="container">
                <div class="col-sm-12">
                    <div class="alert alert-danger" class="col-sm-5 role="danger">
                        <% int countErrors = 0;
                        if (name.length() < 3) {
                            countErrors++;%>
                            <p> <% out.print(countErrors); %>. Name must be at least 3 characters long </p>
                        <% } %>
                        <% if (surname.length() < 3) {
                            countErrors++; %>
                            <p> <% out.print(countErrors); %>. Surname must be at least 3 characters long </p>
                        <% } %>
                        <% if (cusername.length() < 5) {
                            countErrors++; %>
                            <p> <% out.print(countErrors); %>. cusername must be at least 5 characters long </p>
                        <% } %>
                        <% if (password.length() < 5) {
                            countErrors++; %>
                            <p> <% out.print(countErrors); %>. Password must be at least 5 characters long </p>
                        <% } %>
                        <% if (!password.equals(confirm)){
                            countErrors++; %>
                            <p> <% out.print(countErrors); %>. Password and confirm do not match </p>
                        <% } %>
                        
                    </div>
                </div>
                <br>
                <a href="registerC.jsp">
                    <button type="button" allign="left" class="btn btn-info">
                        <span class="glyphicon glyphicon-chevron-left" style="color: white;"></span> Πίσω στην φόρμα εγγραφής
                    </button>
                </a>
            </div>				
        <% 
        }
        %>
        
    </div>
    <!-- /.container -->
    <!-- footer -->
    <%@ include file = "footer.jsp" %>
  </body>
</html>