<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file = "authenticationU.jsp" %>
<%
JobDAO jobdao = new JobDAO();
String domain = request.getParameter("bachelor");
List<Job> jobs = jobdao.searchJobs(domain);
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
				<h1>Jobs matching your bachelor's degree</h1>
			</div>
			<!--container-->
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-condensed table-hover">
                            <tr class="info">
                                <th>Όνομα</th>
                                <th>Τομέας</th>
                            </tr>
                            <%
                            for (Job job: jobs) { %>
                            <tr>
                                <td><a target="_blank" href="http://ism.dmst.aueb.gr/ismgroup79/jobprofile.jsp?id=<%=job.getId()%>">
                                    <%=job.getName() %>
                                </td>
                                <td><%=job.getDomain() %></td>
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
        