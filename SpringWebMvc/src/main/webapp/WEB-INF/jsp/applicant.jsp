<%-- 
    Document   : applicant
    Created on : Apr 23, 2021, 4:02:06 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${apply}">
    <p class="text-primary">Ứng tuyển thành công</p>
</c:if>
<c:if test="${apply == false}">
    <p class="text-danger">Ứng tuyển không thành công, có thể bạn đã ứng tuyển</p>
</c:if>
<div class="main">
    <div class="main-content">  
        <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="80">
                            <div class="mt-2">
                                <h6>{Name}</h6>
                                <p class="text-muted font-size-xs">{Ngành nghề}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="formProfile">
                    <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.name != null}">
                            <div>
                                <% if (request.isUserInRole("ROLE_APPLICANT")) { %>
                                    <a class="btn btn-success" href="<c:url value='/resources/cv/${pageContext.request.userPrincipal.name}.pdf'/>" target="_blank">Click here to see your CV</a>
                                <% }%>
                            </div>
                        </c:when>
                    </c:choose>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card mb-3">
                <div class="card-body">
                    <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        {Name}
                    </div>
                    </div>
                    <hr>
                    <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        {Email}
                    </div>
                    </div>
                    <hr>
                    <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Kinh nghiệm</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        {Experience}
                    </div>
                    </div>
                    <hr>
                    <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Mô tả</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        {Description}
                    </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
    <h4 class="text-center p-3">Danh sách các bài đã nộp</h4>
    <div class="row">
        <table class="table">
            <tr>
                <th>Tên bài đăng</th>
                <th>Nơi làm việc</th>
                <th>Mức lương</th>
                <th>Ngành nghề</th>
                <th>Mô tả</th>
            </tr>
            <c:forEach items="${news}" var="n">
            <tr>
                <td>${n.name}</td> 
                <td>${n.location.name}</td> 
                <td>${n.salary}</td> 
                <td>${n.career.name}</td>
                <td>${n.description}</td>
            </tr>
            </c:forEach>
        </table>
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
