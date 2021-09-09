<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}

#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}
#customers tr:nth-child(even){background-color: #A9A9A9;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body bgcolor=#f1f1f1>

<ul>
  <li> <a href="stateR">Select By State</a></li>
  <li><a href="partyR">Select By Party</a></li>
 
  
</ul>
<table id="customers" border=2>
  <tr>
    <th>Party</th>
     <th>Total Votes</th>
     </tr>
     <tr>
	<c:forEach items="${count}" var="elements">    
 
     <td><c:out value="${elements.party}" />
      <td><c:out value="${elements.cp}" />

</tr>
</c:forEach>
</table>

</body>
</html>