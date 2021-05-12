<%-- 
    Document   : newsdetails
    Created on : May 5, 2021, 3:24:30 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="details">
    <div class="box">
        <div class="detail">
            <div class="title">${news.name}</div>
            <div class="content-detail">
                <p>Mức lương: ${news.salary}</p>
                <p>Kinh nghiệm yêu cầu: ${news.experiance}</p>
                <p>Hình thức làm việc: ${news.typeWorking}</p>
                <p>Thời gian bắt đầu tuyển: ${news.timeStart}</p>
                <p>Thời gian kết thúc tuyển dụng: ${news.timeEnd}</p>
                <p>Ngành nghề: ${news.career.name}</p>
                <p>Địa điểm làm việc: ${news.location.name}</p>
                <p>Tên công ty tuyển dụng: ${news.employer.user.name}</p>
                <p>Mô tả công việc: ${news.description}</p>
            </div>
            <a href="<c:url value="/news/" />">Read More</a>
        </div>
    </div>
</div>
