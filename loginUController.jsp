<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%> 
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="careerpath.*"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

UserDAO userdao = new UserDAO();
try {
    User user = userdao.authenticate(username, password);
    session.setAttribute("userObj2022", user);
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