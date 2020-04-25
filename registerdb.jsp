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
            INSERT INTO details(name, email, password, age,number,degree,experience, worktype,bio, job,positivity,teamwork,time,comm, interest ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
            <sql:param value="${param.user_name}" />
            <sql:param value="${param.user_email}" />
            <sql:param value="${param.user_password}" />
            <sql:param value="${param.user_age}" />
            <sql:param value="${param.user_number}" />
            <sql:param value="${param.user_degree}" />
            <sql:param value="${param.user_experience}" />
            <sql:param value="${param.user_worktype}" />
            <sql:param value="${param.user_bio}" />
            <sql:param value="${param.user_job}" />
            <sql:param value="${param.positivity}" />
            <sql:param value="${param.teamwork}" />
            <sql:param value="${param.time}" />
            <sql:param value="${param.comm}" />
            <sql:param value="${param.user_interest}" />
        </sql:update>
 
 
            <c:redirect url="login.jsp" >
            </c:redirect>
 
 
 
    </body>
</html>
