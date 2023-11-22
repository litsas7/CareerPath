<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
<%
if (session.getAttribute("cuserObj2022") == null) {

    request.setAttribute("error_message", "You are not authorized to view this page!");

%>
    <jsp:forward page="login.jsp" />

<%
    return;
}    
%>