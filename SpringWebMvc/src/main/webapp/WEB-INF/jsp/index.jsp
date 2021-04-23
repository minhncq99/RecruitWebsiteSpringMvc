<%-- 
    Document   : index
    Created on : Apr 7, 2021, 12:29:02 PM
    Author     : minh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="row justify-content-around my-3">
    <h4 class="col-12 text-center">Bản tin mới nhất</h4>
    <c:forEach items="${news}" var="n"> 
        <div class="col-4">
            <div class="col-12 news-container">
                <h6 class="text-center">${n.employer.user.name} tuyển dụng</h6>
                <p>Ngành nghề: ${n.career.name}</p>
                <p>Nời làm việc: ${n.location.name}</p>
                <p>Nời làm việc: ${n.location.name}</p>
            </div>
        </div>
    </c:forEach>
</div>

