#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Lista osób</title>
    <link rel="stylesheet" type="text/css" href="${symbol_dollar}{pageContext.request.contextPath}/resources/css/style.css"/>
</head>

<body>
     <h1>Lista osób</h1>

     <table border="1">
         <th><spring:message code="page.personList.id"/> </th>
         <th><spring:message code="page.personList.name"/> </th>
         <th><spring:message code="page.personList.surname"/> </th>
         <th><spring:message code="page.personList.mail"/> </th>
         <c:forEach items="${symbol_dollar}{peoples}" var="person">
             <tr>
                 <td><a href="<c:url value="/person/edit"/>?id=${symbol_dollar}{person.id}">${symbol_dollar}{person.id}</a> </td>
                 <td>${symbol_dollar}{person.name}</td>
                 <td>${symbol_dollar}{person.surname}</td>
                 <td>${symbol_dollar}{person.email}</td>
             </tr>
         </c:forEach>
     </table>
</body>

</html>
