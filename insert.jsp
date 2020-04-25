
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<style>
input[type=submit] {
  width: 100%;
  background-color: darkblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: darkolivegreen;
}
input[type=reset] {
  width: 100%;
  background-color: darkblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=reset]:hover {
  background-color: darkolivegreen;
}
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
        <br/>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <center>
        <form action="insertdb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Purchase Product</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="pname"/></td>
                    </tr>
                    <tr>
                        <td><label>Quantity</label></td>
                        <td><input type="text" name="qty"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
 
    </body>
</html>
 