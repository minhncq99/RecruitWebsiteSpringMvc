<%-- 
    Document   : applicant
    Created on : Apr 23, 2021, 4:02:06 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="text-primary">${apply}</div>
<div>
    <h4 class="text-center p-3">Danh sách các công ty đã nộp đơn</h4>
    ${news}
    <c:forEach items="${news}" var="n">
        <div>${n.name}</div>
    </c:forEach>
</div>
