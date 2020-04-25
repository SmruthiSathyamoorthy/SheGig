<%-- 
    Document   : mainpage
    Created on : 21 Apr, 2020, 8:37:27 PM
    Author     : Smruthi Sathyamoorty
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
    </head>
    
    
    
   <body>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
       <a class="navbar-brand" href="mainpage.jsp"> <strong class="margin-10px-left xs-margin-four-left text-pink">SheGig</a></strong>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Explore
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="job.jsp">Job Portal</a>
          <a class="dropdown-item" href="mainpage.jsp">Connect</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="contact.jsp">Contact us</a>
        </div>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
       <li class="nav-item active">
           <a class="nav-link" href="login.jsp"><b>Logout</b><span class="sr-only">(current)</span></a>
      </li>
    </form>
  </div>
</nav>

    <br/>
    <br/>
    
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/loginjdbc"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from details;
        </sql:query>
   <center> <b><h2>Join hands with other aspiring women like you! </b></h2></center
<br/>
<br/>
    <table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Degree</th>
      <th scope="col">Experience</th>
      <th scope="col">Work Type</th>
      <th scope="col">Job</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
      <c:forEach var="row" items="${result.rows}">
    <tr>
      
      <td><c:out value="${row.id}"/></td>
      <td><c:out value="${row.name}"/></td>
      <td><c:out value="${row.degree}"/></td>
      <td><c:out value="${row.experience}"/></td>
      <td><c:out value="${row.worktype}"/></td>
      <td><c:out value="${row.job}"/></td>
     <td> <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Connect
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        
        <!-- Modal body -->
        <div class="modal-body">
          Invitation Sent
        </div>
        
        <!-- Modal footer -->
        <div class="modal-body">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
     </td>
    </tr>
      </c:forEach>
   
  </tbody>
</table>
    </body>