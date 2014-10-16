#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${symbol_dollar}{pageContext.request.contextPath}/resources/css/style.css"/>
    <title>Strona główna</title>
</head>

<body>
<div id="wrapper">
    <div id="content">
        <p>
            <a href="${symbol_dollar}{pageContext.request.contextPath}/person/list">
                <spring:message code="page.index.personList"/>
            </a>
        <p>
        </p>
            <a href="${symbol_dollar}{pageContext.request.contextPath}/person/add">
                <spring:message code="page.index.register"/>
            </a>
        </p>
    </div>
</div>
</body>
</html>