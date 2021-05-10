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
        <link href="<c:url value="/resources/css/${cssfile}.css"/>" rel="stylesheet" >
        <link href="<c:url value="/resources/images/shortcut_icon.png" />" rel="shortcut icon" >

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!-- Google Chart -->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <!-- Google Chart -->
        <title><tiles:insertAttribute name="title"/></title>
    </head>
    <body>
        <tiles:insertAttribute name="header" />
        <main class="w-100">
            <tiles:insertAttribute name="banner" />
            <div class="container w-100">
                <tiles:insertAttribute name="content" />
            </div>
        </main>
        <tiles:insertAttribute name="footer" />
        <!-- script -->
        <script src="<c:url value="/resources/js/base.js"/>"></script>
    </body>
</html>
