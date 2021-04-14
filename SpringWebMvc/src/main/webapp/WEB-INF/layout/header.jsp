<%-- 
    Document   : header
    Created on : Apr 7, 2021, 12:44:04 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header class="header-outer">
	<div class="header-inner responsive-wrapper">
		<div class="header-logo">
			<img src="<c:url value="/resources/images/logo.png" />" alt="logo" width="55%">
		</div>
		<nav class="header-navigation">
                    <a class="nav-link" href="<c:url value="/" />">Trang chủ</a>
                    <a class="nav-link" href="<c:url value="/job/" />">Tìm việc</a>
                    <a class="nav-link" href="<c:url value="/company/" />">Công ty</a>
                    <a class="nav-link" href="<c:url value="/" />">Đăng tin</a>
                    <a class="nav-link" href="<c:url value="/" />">Liên hệ</a>
                    <button>Menu</button>
            <div class="col-lg-3 d-flex justify-content-end">
                <a href="<c:url value="/register/" />" class="btn btn-primary mr-1">Đăng ký</a>
                <a href="<c:url value="/login/"/>" class="btn btn-outline-primary">Đăng nhập</a>
                <a href="<c:url value="/profile/"/>" class="btn">Profile</a>
            </div>
		</nav>
	</div>
</header>
