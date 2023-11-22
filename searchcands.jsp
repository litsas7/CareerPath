<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file = "authenticationC.jsp" %>
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
				<h1>Search canditates by their surname!</h1>
			</div>
			<!--container-->
            <form action="searchcandsresults.jsp" method="POST" class="form-horizontal">
                <div class="form-group">
                    <label for="surname" class="col-sm-2 control-label main-label">Surname: </label>
                    <div class="col-sm-6">
                      <input type="text" name="surname" id="surname" class="form-control" placeholder="surname">
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
