<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
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
			    <h1>Εγγραφή ως εταιρικός χρήστης</h1>
		    </div>
        <div class="alert alert-warning" role="alert">
          <div class="text-center"> Συμπληρώστε όλα τα ακόλουθα πεδία για να ολοκληρώσετε την εγγραφή</div>
        </div>
        <form action="registerCController.jsp" method="POST" class="form-horizontal">
          <!-- name -->
          <div class="form-group">
            <label for="name" class="col-sm-2 control-label main-label">Name: </label>
            <div class="col-sm-6">
              <input type="text" name="name" id="name" class="form-control" placeholder="Name">
            </div>
          </div>
          <!-- surname -->
          <div class="form-group">
            <label for="surname" class="col-sm-2 control-label main-label">Surname: </label>
            <div class="col-sm-6">
              <input type="text" name="surname" id="surname" class="form-control" placeholder="surname">
            </div>
          </div>
          <!-- email -->
          <div class="form-group">
            <label for="email" class="col-sm-2 control-label main-label">Email: </label>
            <div class="col-sm-6">
              <input type="email" name="email" id="email" class="form-control" placeholder="email">
            </div>
          </div>
          <!-- username -->
          <div class="form-group">
            <label for="username" class="col-sm-2 control-label main-label">Username: </label>
            <div class="col-sm-6">
              <input type="text" name="username" id="username" class="form-control" placeholder="username">
            </div>
          </div>  

          <!-- password -->
          <div class="form-group">
            <label for="password" class="col-sm-2 control-label main-label">Password: </label>
            <div class="col-sm-6">
              <input type="password" name="password" id="password" class="form-control" placeholder="password">
            </div>
          </div>

          <!-- confirm -->
          <div class="form-group">
            <label for="confirm" class="col-sm-2 control-label main-label">Confirm: </label>
            <div class="col-sm-6">
              <input type="password" name="confirm" id="confirm" class="form-control" placeholder="confirm">
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