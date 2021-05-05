<%-- 
    Document   : newsdetails
    Created on : May 5, 2021, 3:24:30 PM
    Author     : minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="news-detail">
    <h3>${news.name}</h3>
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