<%-- 
    Document   : applicant
    Created on : Apr 23, 2021, 4:02:06 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="text-primary">${apply}</div>
<div>
    <h4 class="text-center p-3">Danh sách các bài đã nộp</h4>
    <div class="row">
        <c:forEach items="${news}" var="n">
            <div class="col-4 p-2">
                <div class="border rounded p-2 cell">
                    <h4>${n.name}</h4>
                    <p>Mức lương: ${n.salary}</p>
                    <p>Nơi làm việc: ${n.location.name}</p>
                    <p>Ngành nghề: ${n.career.name}</p>
                </div>
            </div>
        </c:forEach>
    </div>
    <h4 class="text-center p-3">Công ty có thể phù hợp với bạn</h4>
    <div class="row">
        <c:forEach items="${employer}" var="e">
            <div class="col-4 p-2">
                <div class="border rounded p-2 cell">
                    <h4>${e.user.name}</h4>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
