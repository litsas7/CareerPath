<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%> 
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
<%
String cusername = request.getParameter("username");
String password = request.getParameter("password");

CuserDAO cuserdao = new CuserDAO();
try {
    Cuser cuser = cuserdao.authenticate(cusername, password);
    session.setAttribute("cuserObj2022", cuser);
%>
<jsp:forward page ="index.jsp"/>
<%
} catch(Exception e) {
    request.setAttribute("error_message", e.getMessage());
%>
<jsp:forward page="login.jsp"/>
<%
}
%>