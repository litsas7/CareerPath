<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%
JobDAO jobdao = new JobDAO();
String id = (String)request.getParameter("id");
Job job = jobdao.findJob(id);
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
				<h1>Job details</h1>
			</div>
			
		
            <div class="row">

                <div class="col-xs-12">
                    <ul>
            
                        <li>Job name: <%=job.getName() %></li>
                        <li>Job domain: <%=job.getDomain() %></li>  
                        <li>Job description: <%=job.getDesc() %></li> 
                    
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