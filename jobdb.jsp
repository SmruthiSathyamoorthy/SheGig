<%-- 
    Document   : registerdb
    Created on : 19 Apr, 2020, 9:50:00 PM
    Author     : Smruthi Sathyamoorty
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>JINSERT Operation</title>
    </head>
    <body>
   
 
=        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/loginjdbc"
                           user="root"  password=""/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO jobportal(title, location, worktype, time) VALUES (?,?,?,?);
            <sql:param value="${param.title}" />
            <sql:param value="${param.location}" />
            <sql:param value="${param.worktype}" />
            <sql:param value="${param.time}" />
        </sql:update>
 
 
            <c:redirect url="job.jsp" >
            </c:redirect>
 
 
 
    </body>
</html>
