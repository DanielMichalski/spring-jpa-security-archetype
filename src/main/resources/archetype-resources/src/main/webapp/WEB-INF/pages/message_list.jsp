#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Wiadomości użytkownika</title>
</head>

<body>
    <h1>Wiadomości do ${symbol_dollar}{person.name}</h1>

    <c:forEach items="${symbol_dollar}{person.messages}" var="message">
        ${symbol_dollar}{message.subject} <br/>
        ${symbol_dollar}{message.content}
    </c:forEach>
</body>

</html>
