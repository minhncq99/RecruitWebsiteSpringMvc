<%-- 
    Document   : header
    Created on : Apr 7, 2021, 12:44:04 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <div id="header-sticky">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <div class="logo">
                        <img height="80px" width="90px" 
                            src="<c:url value="/resources/images/logo.png" />" 
                            alt="logo">
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="navbar navbar-expand-sm">
                        <ul class="navbar-nav w-100 d-flex justify-content-around">
                            <li class="nav-item active">
                                <a class="nav-link" href="<c:url value="/" />">Trang chủ</a>
                            </li>
                            <li>
                                <a class="nav-link" href="<c:url value="/" />">Tìm việc</a>
                            </li>
                            <li>
                                <a class="nav-link" href="<c:url value="/company/" />">Công ty</a>
                            </li>
                            <li>
                                <a class="nav-link" href="<c:url value="/" />">Đăng tin</a>
                            </li>
                            <li>
                                <a class="nav-link" href="<c:url value="/" />">Liên hệ</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 d-flex justify-content-center">
                    <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.name == null}">
                            <a href="<c:url value="/register/" />" class="btn btn-primary mr-1">Đăng ký</a>
                            <a href="<c:url value="/login/"/>" class="btn btn-outline-primary">Đăng nhập</a>
                        </c:when>
                        <c:when test="${pageContext.request.userPrincipal.name != null}">
                            <div class="dropdown show">
                                <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    ${pageContext.request.userPrincipal.name}
                                </a>

                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <% if (request.isUserInRole("ROLE_EMPLOYER")) { %>
                                        <a class="dropdown-item" href="<c:url value="/employer/" />">Trang cá nhân</a>
                                        <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                     <% } %>
                                    <% if (request.isUserInRole("ROLE_APPLICANT")) { %>
                                        <a class="dropdown-item" href="#">Trang cá nhân</a>
                                        <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                    <% } %>
                                    <a class="dropdown-item" href="<c:url value="/logout" />">Đăng xuất</a>
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</header>