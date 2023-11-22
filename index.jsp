<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
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
				<h1>Home Page</h1>
			</div>
			<% 
			if (session.getAttribute("cuserObj2022") == null && session.getAttribute("userObj2022") == null) { %>
				<p>Καλώς ήρθατε στην ιστοσελίδα CareerPath. Εκεί όπου η εύρεση εργασίας και εργαζομένου γίνεται
				ευκολότερη. Μέσω αυτής της σελίδας οι απόφοιτοι του Ο. Π. Α. μπορούν να βρουν τις θέσεις 
				εργασίας που τους ενδιαφέρουν και οι εταιρικοί χρήστες μπορούν να βρουν το κατάλληλο ανθρώπινο 
				δυναμικό για την επιχείρηση τους. Κάντε εγγραφή για να μάθετε περισσότερα!
				</p>
				<a href="register.jsp" class="btn btn-primary btn-lg active" role="button">Register</a>
				<p>Έχεις ήδη λογαριασμό;
					<a href="login.jsp" class="btn btn-primary btn-lg active" role="button">Log In</a>
				</p>
			<% }
			else { 
				String username;
				if (session.getAttribute("userObj2022") == null) {
					Cuser cuser = (Cuser)session.getAttribute("cuserObj2022");
					username = cuser.getCusername() ;
				} else {
					User user = (User)session.getAttribute("userObj2022");
					username = user.getUsername() ;
				}
			
			%>
				<p class="lead">Καλώς ήρθατε και πάλι <%=username%></p>
			<% } %>
        </div>
		<!-- /container -->

		<!-- footer -->
		<%@ include file = "footer.jsp" %>
	</body>
</html>  