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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
 
    <style type="text/css">
    	body{
    font-size: 16px;
    color: #6f6f6f;
    font-weight: 400;
    line-height: 28px;
    letter-spacing: 0.8px;
    margin-top:20px;
}

.font-size38 {
    font-size: 38px;
}
.team-single-text .section-heading h4,
.section-heading h5 {
    font-size: 36px
}

.team-single-text .section-heading.half {
    margin-bottom: 20px
}

@media screen and (max-width: 1199px) {
    .team-single-text .section-heading h4,
    .section-heading h5 {
        font-size: 32px
    }
    .team-single-text .section-heading.half {
        margin-bottom: 15px
    }
}

@media screen and (max-width: 991px) {
    .team-single-text .section-heading h4,
    .section-heading h5 {
        font-size: 28px
    }
    .team-single-text .section-heading.half {
        margin-bottom: 10px
    }
}

@media screen and (max-width: 767px) {
    .team-single-text .section-heading h4,
    .section-heading h5 {
        font-size: 24px
    }
}


.team-single-icons ul li {
    display: inline-block;
    border: 1px solid #02c2c7;
    border-radius: 50%;
    color: #86bc42;
    margin-right: 8px;
    margin-bottom: 5px;
    -webkit-transition-duration: .3s;
    transition-duration: .3s
}

.team-single-icons ul li a {
    color: #02c2c7;
    display: block;
    font-size: 14px;
    height: 25px;
    line-height: 26px;
    text-align: center;
    width: 25px
}

.team-single-icons ul li:hover {
    background: #02c2c7;
    border-color: #02c2c7
}

.team-single-icons ul li:hover a {
    color: #fff
}

.team-social-icon li {
    display: inline-block;
    margin-right: 5px
}

.team-social-icon li:last-child {
    margin-right: 0
}

.team-social-icon i {
    width: 30px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    font-size: 15px;
    border-radius: 50px
}

.padding-30px-all {
    padding: 30px;
}
.bg-light-gray {
    background-color: #f7f7f7;
}
.text-center {
    text-align: center!important;
}
img {
    max-width: 100%;
    height: auto;
}


.list-style9 {
    list-style: none;
    padding: 0
}

.list-style9 li {
    position: relative;
    padding: 0 0 15px 0;
    margin: 0 0 15px 0;
    border-bottom: 1px dashed rgba(0, 0, 0, 0.1)
}

.list-style9 li:last-child {
    border-bottom: none;
    padding-bottom: 0;
    margin-bottom: 0
}


.text-sky {
    color: #02c2c7
}

.text-orange {
    color: #e95601
}

.text-green {
    color: #5bbd2a
}

.text-yellow {
    color: #f0d001
}

.text-pink {
    color: #ff48a4
}

.text-purple {
    color: #9d60ff
}

.text-lightred {
    color: #ff5722
}

a.text-sky:hover {
    opacity: 0.8;
    color: #02c2c7
}

a.text-orange:hover {
    opacity: 0.8;
    color: #e95601
}

a.text-green:hover {
    opacity: 0.8;
    color: #5bbd2a
}

a.text-yellow:hover {
    opacity: 0.8;
    color: #f0d001
}

a.text-pink:hover {
    opacity: 0.8;
    color: #ff48a4
}

a.text-purple:hover {
    opacity: 0.8;
    color: #9d60ff
}

a.text-lightred:hover {
    opacity: 0.8;
    color: #ff5722
}

.custom-progress {
    height: 10px;
    border-radius: 50px;
    box-shadow: none;
    margin-bottom: 25px;
}
.progress {
    display: -ms-flexbox;
    display: flex;
    height: 1rem;
    overflow: hidden;
    font-size: .75rem;
    background-color: #e9ecef;
    border-radius: .25rem;
}


.bg-sky {
    background-color: #02c2c7
}

.bg-orange {
    background-color: #e95601
}

.bg-green {
    background-color: #5bbd2a
}

.bg-yellow {
    background-color: #f0d001
}

.bg-pink {
    background-color: #ff48a4
}

.bg-purple {
    background-color: #9d60ff
}

.bg-lightred {
    background-color: #ff5722
}

    </style>
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
                            SELECT * from details where name =?
                             <sql:param value="${user}" />
                            </sql:query>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />

<div class="container">
    <div class="team-single">
        <div class="row">
            <div class="col-lg-4 col-md-4 xs-margin-30px-bottom">
                <div class="team-single-img">
                    <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="">
                </div>
                <div class="bg-light-gray padding-30px-all md-padding-25px-all sm-padding-20px-all text-center">
                    <h4 class="margin-10px-bottom font-size24 md-font-size22 sm-font-size20 font-weight-600"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.job}"/>
                      </c:forEach></h4>
                    <p class="sm-width-95 sm-margin-auto"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.bio}"/>
                        </c:forEach></p></p>
                    <div class="margin-20px-top team-single-icons">
                        <ul class="no-margin">
                            <li><a href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="javascript:void(0)"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="javascript:void(0)"><i class="fab fa-google-plus-g"></i></a></li>
                            <li><a href="javascript:void(0)"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-6">
                <div class="team-single-text padding-50px-left sm-no-padding-left">
                    <h4 class="font-size38 sm-font-size32 xs-font-size30"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.name}"/>
                      </c:forEach></h4>
                    <p class="no-margin-bottom">
                    <div class="contact-info-section margin-40px-tb">
                        <ul class="list-style9 no-margin">
                            <li>

                                <div class="row">
                                    <div class="col-md-5 col-5">
                                        <i class="fas fa-graduation-cap text-orange"></i>
                                        <strong class="margin-10px-left text-orange">Degree:</strong>
                                    </div>
                                    <div class="col-md-7 col-7">
                                        <p><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.degree}"/>
                      </c:forEach></h4></p>
                                    </div>
                                </div>

                            </li>
                            <li>

                                <div class="row">
                                    <div class="col-md-5 col-5">
                                        <i class="far fa-gem text-yellow"></i>
                                        <strong class="margin-10px-left text-yellow">Exp.:</strong>
                                    </div>
                                    <div class="col-md-7 col-7">
                                        <p><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.experience}"/>
                      </c:forEach></h4></p>
                                    </div>
                                </div>

                            </li>
                            <li>

                                <div class="row">
                                    <div class="col-md-5 col-5">
                                        <i class="far fa-file text-lightred"></i>
                                        <strong class="margin-10px-left text-lightred">Preferable Work type</strong>
                                    </div>
                                    <div class="col-md-7 col-7">
                                        <p><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.worktype}"/>
                      </c:forEach></p>
                                    </div>
                                </div>

                            </li>
                            <li>

                                <div class="row">
                                    <div class="col-md-5 col-5">
                                        <i class="fa fa-heart text-green"></i>
                                        <strong class="margin-10px-left text-green">Interests: </strong>
                                    </div>
                                    <div class="col-md-7 col-7">
                                        <p><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.interest}"/>
                      </c:forEach></p>
                                    </div>
                                </div>

                            </li>
                            <li>

                                <div class="row">
                                    <div class="col-md-5 col-5">
                                        <i class="fas fa-mobile-alt text-purple"></i>
                                        <strong class="margin-10px-left xs-margin-four-left text-purple">Phone:</strong>
                                    </div>
                                    <div class="col-md-7 col-7">
                                        <p><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.number}"/>
                      </c:forEach></h4></p>
                                    </div>
                                </div>

                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-5 col-5">
                                        <i class="fas fa-envelope text-pink"></i>
                                        <strong class="margin-10px-left xs-margin-four-left text-pink">Email:</strong>
                                    </div>
                                    <div class="col-md-7 col-7">
                                        <p><a href="javascript:void(0)"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.email}"/>
                      </c:forEach></a></p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <h5 class="font-size24 sm-font-size22 xs-font-size20">Professional Skills</h5>

                    <div class="sm-no-margin">
                        <div class="progress-text">
                            <div class="row">
                                <div class="col-7">Positive Behaviors</div>
                                <div class="col-5 text-right"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.positivity}"/>
                      </c:forEach></h4></div>
                            </div>
                        </div>
                        <div class="custom-progress progress">
                            <div role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:40%" class="animated custom-bar progress-bar slideInLeft bg-sky"></div>
                        </div>
                        <div class="progress-text">
                            <div class="row">
                                <div class="col-7">Teamworking Abilities</div>
                                <div class="col-5 text-right"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.teamwork}"/>
                      </c:forEach></h4></div>
                            </div>
                        </div>
                        <div class="custom-progress progress">
                            <div role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:50%" class="animated custom-bar progress-bar slideInLeft bg-orange"></div>
                        </div>
                        <div class="progress-text">
                            <div class="row">
                                <div class="col-7">Time Management </div>
                                <div class="col-5 text-right"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.time}"/>
                      </c:forEach></h4></div>
                            </div>
                        </div>
                        <div class="custom-progress progress">
                            <div role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:60%" class="animated custom-bar progress-bar slideInLeft bg-green"></div>
                        </div>
                        <div class="progress-text">
                            <div class="row">
                                <div class="col-7">Excellent Communication</div>
                                <div class="col-5 text-right"><c:forEach var="row" items="${result.rows}">
                     <c:out value="${row.comm}"/>
                      </c:forEach></h4></div>
                            </div>
                        </div>
                        <div class="custom-progress progress">
                            <div role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:80%" class="animated custom-bar progress-bar slideInLeft bg-yellow"></div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-md-12">

            </div>
        </div>
    </div>
</div>

<script src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>