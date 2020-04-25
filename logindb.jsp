<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
 
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Authentication page</title>

  </head>
  <body>
    
    <c:if test="${ empty param.user_name or empty param.user_password}">
      <c:redirect url="login.jsp" >
              <c:param name="errMsg" value="Please Enter UserName and Password" />
              
      </c:redirect>
       
    </c:if>
     
    <c:if test="${not empty param.user_name and not empty param.user_password}">
      <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/loginjdbc"
                       user="root" password=""/>
 
      <s:query dataSource="${ds}" var="selectQ">
        select *  from details
        where name="${param.user_name}"
        and password="${param.user_password}";
      </s:query>
 
        <c:choose>
         <c:when test="${selectQ.rowCount > 0}">
            <c:set scope="session"
                   var="loginUser"
                   value="${param.user_name}"/>
              <%
      String name=request.getParameter("user_name");   
     session.setAttribute("user",name);  %>

  
            <c:redirect url="index.jsp"/>
          </c:when>
          <c:otherwise>
            <c:redirect url="login.jsp" >
              <c:param name="errMsg" value="Username/password does not match" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
 
    </c:if>
 
  </body>
</html>