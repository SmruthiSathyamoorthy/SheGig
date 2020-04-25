<%-- 
    Document   : header
    Created on : 20 Apr, 2020, 1:56:27 PM
    Author     : Smruthi Sathyamoorty
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
 <style>
.btn {
  border: none;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}

.success {background-color: #4CAF50;} /* Green */
.success:hover {background-color: #46a049;}
</style>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="login.jsp" />
</c:if>
 

<button class="btn success"><a href="logout.jsp">Logout </a></button>