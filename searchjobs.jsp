<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file = "authenticationU.jsp" %>
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
				<h1>Search jobs by your bachelor degree</h1>
			</div>
			<!--container-->
            <form action="searchjobresults.jsp" method="POST" class="form-horizontal">
            <div class="form-group">
                <label for="bachelor" class="col-sm-2 control-label main-label">Bachelor's degree: </label>
                <div class="col-sm-10">
                    <select id="bachelor" name="bachelor" class="form-control">
                        <option value="">--- Please choose your bachelor's degree ---</option>
                        <option value="IEES">International & European Economic Studies</option>
                        <option value="Economics">Economics</option>
                        <option value="MST">Management Science & Technology</option>	
                        <option value="BA">Business Administration</option>
                        <option value="AF">Accounting & Finance</option>
                        <option value="MC">Marketing & Communication</option>
                        <option value="Info">Informatics</option>
                        <option value="Stat">Statistics</option>                
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-10 col-sm-offset-2">
                  <button type="submit" class="btn btn-success"> Search
                  </button>
                </div>
            </div>
            <!--/container-->
        </div>
        <%@ include file = "footer.jsp" %>
    </body>
</html>
