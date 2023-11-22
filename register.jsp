<<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file = "header.jsp" %>
    <body>
        <%@ include file = "navbar.jsp" %>
        <div class="container theme-showcase" role="main">
            <div class="jumbotron">
				<h1>CareerPath</h1>
			</div>
            <div class="page-header">
			    <h1>Εγγραφή ως</h1>
		    </div>
            <div class="form-group">
                <div class="col-sm-10 col-sm-offset-2">
                    <a href="registerU.jsp" class="btn btn-secondary">Ενδιαφερόμενος χρήστης</a> 
                    <a href="registerC.jsp" class="btn btn-secondary">Εταιρικός χρήστης</a>              
                </div>
            </div>
        </div> 
        <%@ include file = "footer.jsp" %>
    </body>
</html>