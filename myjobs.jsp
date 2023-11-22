<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
<%@ import file = "authenticationC.jsp" %>
<%
Cuser cuser = (Cuser)session.getAttribute("cuserObj2022"):
String cuname = cuser.getCusername();
JobDAO jobdao = new JobDAO();
List<Job> jobs = jobdao.myJobs(cuname);
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
				<h1>Οι αναρτήσεις μου</h1>
			</div>
            <!--container-->
            <div class="form-group">
                <div class="col-sm-10 col-sm-offset-2">
                    <a href="addjobs.jsp" class="btn btn-secondary">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Νέα ανάρτηση
                    </a>             
                </div>
            </div>
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
                                </a></td>
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
        <%@ include file = "footer.jsp" %>
    </body>
</html>      