<%-- 
    Document   : header
    Created on : Apr 7, 2021, 12:44:04 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <div id="header-sticky" class="pb-3">'
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
                                <a class="nav-link" href="<c:url value="/" />">Công ty</a>
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
                <div class="col-lg-3 d-flex justify-content-end">
                    <a href="#" class="btn btn-primary mr-1">Đăng ký</a>
                    <a href="#" class="btn btn-outline-primary">Đăng nhập</a>
                </div>
            </div>
        </div>
    </div>
</header>