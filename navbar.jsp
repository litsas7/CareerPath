<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Fixed navbar -->
    <%
	if ( session.getAttribute("userObj2022") == null && session.getAttribute("cuserObj2022") == null ) {
	%>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span> <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">8170197</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("index.jsp") ? "active" : ""  %>">
                        <a href="index.jsp">Home</a>
                    </li>
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("jobs.jsp") ? "active" : ""  %>">
                        <a href="jobs.jsp">Jobs</a>
                    </li>					
                </ul>		
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Sign in</a></li>								        	
                </ul>		
    
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <%
    }
    else if (session.getAttribute("userObj2022") != null){
         User usr = (User)session.getAttribute("userObj2022");
    %>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span> <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">8170197</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("index.jsp") ? "active" : ""  %>">
                        <a href="index.jsp">Home</a>
                    </li>										
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("jobs.jsp") ? "active" : ""  %>">
                        <a href="jobs.jsp">Jobs</a>
                    </li>				
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("searchjobs.jsp") ? "active" : ""  %>">
                        <a href="searchjobs.jsp">Search Jobs</a>
                    </li>
                                    
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <p class="navbar-text">Signed in as <%=usr.getUsername() %></p>
                    </li>
                    <li>
                        <a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
                    </li>								        	
                </ul>		
    
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <%
    }
    else {
        Cuser cusr = (Cuser)session.getAttribute("cuserObj2022");
    %>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span> <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">8170197</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("index.jsp") ? "active" : ""  %>">
                        <a href="index.jsp">Home</a>
                    </li>										
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("jobs.jsp") ? "active" : ""  %>">
                        <a href="jobs.jsp">Jobs</a>
                    </li>
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("myjobs.jsp") ? "active" : ""  %>">
                        <a href="myjobs.jsp">My Jobs</a>
                    </li>				
                    <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("searchcands.jsp") ? "active" : ""  %>">
                        <a href="searchcands.jsp">Search Canditates</a>
                    </li>
                                    
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <p class="navbar-text">Signed in as <%=cusr.getCusername() %></p>
                    </li>
                    <li>
                        <a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
                    </li>								        	
                </ul>		
    
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <%
    }
    %>

</html>