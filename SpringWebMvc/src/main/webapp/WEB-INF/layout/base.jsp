<%-- 
    Document   : base
    Created on : Apr 7, 2021, 12:43:57 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


        <link href="<c:url value="/resources/css/base.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/header.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/footer.css"/>" rel="stylesheet">


        <link href="<c:url value="/resources/images/shortcut_icon.png" />" rel="shortcut icon" >
        <title><tiles:insertAttribute name="title"/></title>
    </head>
    <body>
        <tiles:insertAttribute name="header" />
        <main>
            <div class="container">
                <tiles:insertAttribute name="content" />
            </div>
        </main>
        <tiles:insertAttribute name="footer" />
        <!-- script -->
        <script src="<c:url value="/resources/js/header.js"/>"></script>
        <script src="<c:url value="/resources/js/index.js"/>"></script>
    </body>
</html>
