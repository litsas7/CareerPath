<%@ page import="java.io.*,java.util.*" %>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ import file = "authenticationC.jsp" %>
<%
Cuser cuser = (Cuser)session.getAttribute("cuserObj2022");
JobDAO jobdao = new JobDAO();
List<Job> jobs = jobdao.getJobs();
String name = request.getParameter("name");
String domain = request.getParameter("domain");
String desc = request.getParameter("desc");
int id = jobs.size();
String cuname = cuser.getCusername();
int interested = 0;
boolean correct = true;
if (name.length() < 3 || desc.length() < 6 ) {
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
					<h1>Η ανάρτηση ολοκληρώθηκε!</h1>
				</div>
			<% } else { %>
				<div class="page-header">
					<h1>Η φόρμα της ανάρτησης έχει λανθασμένα πεδία</h1>
				</div>
			<% } %>
            <%
            if (correct) { %>
            <div class="alert alert-success" role="alert">Έχει σταλθεί μήνυμα επιβεβαίωσης στην ηλεκτρονική διεύθυνση που υποβάλλατε</div>
            <ol>
                <li>Name: <%=name%></li>
                <li>Domain: <%=domain%></li>
                <li>Description: <%=desc%></li>
            </ol>
        <%
        Job job = new Job(name, domain, description, id, interested, cuname);
        jobdao.register(job);
        <a href="index.jsp" class="btn btn-secondary">Αρχική σελίδα</a>
        }
        else {   %>
            <div class="container">
                <div class="col-sm-12">
                    <div class="alert alert-danger" class="col-sm-5 role="danger">
                        <% int countErrors = 0;
                        if (name.length() < 3) {
                            countErrors++;%>
                            <p> <% out.print(countErrors); %>. Name must be at least 3 characters long </p>
                        <% } %>
                        <% if (desc.length() < 6) {
                            countErrors++; %>
                            <p> <% out.print(countErrors); %>. Description must be at least 6 characters long </p>
                        <% } %>
                    </div>
                </div>
                <br>
                <a href="addjobs.jsp">
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