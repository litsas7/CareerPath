<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
	<%@ include file = "header.jsp" %>
<body>	

	<div class="container theme-showcase" role="main">

		<div class="alert alert-success text-center" role="alert">Η έξοδος πραγματοποιηθηκε με επιτυχία</div>		
        <a href="index.jsp" class="btn btn-primary btn-lg active" role="button">Home</a>	</div>
    
	<!-- /container -->

	<!-- footer -->
	<%@ include file = "footer.jsp" %>
	
</body>
</html>
