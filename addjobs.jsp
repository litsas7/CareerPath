<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="careerpath.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ import file = "authenticationC.jsp" %>
<!DOCTYPE html>
<html>
    <%@ include file = "header.jsp" %>
    <body>
		<%@ include file = "navbar.jsp" %>
      <div class="container theme-showcase" role="main">
		<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>CareerPath</h1>
			</div>
        <div class="page-header">
			    <h1>Νέα ανάρτηση</h1>
		    </div>
        <div class="alert alert-warning" role="alert">
          <div class="text-center"> Συμπληρώστε όλα τα ακόλουθα πεδία</div>
        </div>
        <form action="addjobsController.jsp" method="POST" class="form-horizontal">
          <!-- name -->
          <div class="form-group">
            <label for="name" class="col-sm-2 control-label main-label">Name: </label>
            <div class="col-sm-6">
              <input type="text" name="name" id="name" class="form-control" placeholder="Name">
            </div>
          </div>
          <!-- domain -->
          <div class="form-group">
            <label for="domain" class="col-sm-2 control-label main-label">Domain: </label>
            <div class="col-sm-10">
                <select id="domain" name="domain" class="form-control">
                    <option value="">--- Please choose domain ---</option>
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
          <!-- desc -->
          <div class="form-group">
            <label for="desc" class="col-sm-2 control-label main-label">Description: </label>
            <div class="col-sm-6">
              <input type="text" name="desc" id="desc" class="form-control" placeholder="description">
            </div>
          </div>
          
          <!-- buttons -->
          <div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
              <button type="submit" class="btn btn-success">
                <span class="glyphicon glyphicon-ok"></span> Submit
              </button> 
              <button type="reset" class="btn btn-danger">
                <span class="glyphicon glyphicon-remove"></span> Cancel
              </button>              
            </div>
          </div>

        </form>

      </div>
      <!-- /.container -->

      <!-- footer -->
      <%@ include file = "footer.jsp" %>
  </body>
</html>