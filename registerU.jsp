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
			    <h1>Εγγραφή ως ενδιαφερόμενος χρήστης</h1>
		    </div>
        <div class="alert alert-warning" role="alert">
          <div class="text-center"> Συμπληρώστε όλα τα ακόλουθα πεδία για να ολοκληρώσετε την εγγραφή</div>
        </div>
        <form action="registerUController.jsp" method="POST" class="form-horizontal">
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
          
          <!-- bachelor  -->
          <div class="form-group">
            <label for="bachelor" class="col-sm-2 control-label main-label">Bachelor's degree: </label>
            <div class="col-sm-6">
                <select id="bachelor" name="bachelor" class="form-control">
                    <option value="">--- Please choose Department ---</option>
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

          <!-- years -->
          <div class="form-group">
            <label for="years" class="col-sm-2 control-label main-label">Years of working experience: </label>
            <div class="col-sm-6">
              <input type="text" name="years" id="years" class="form-control" placeholder="years">
            </div>
          </div>

          <!-- age -->
          <div class="form-group">
            <label for="age" class="col-sm-2 control-label main-label">Age: </label>
            <div class="col-sm-6">
              <input type="text" name="age" id="age" class="form-control" placeholder="your age">
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