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
            <a class="nav-link" href="<c:url value="/contact/" />">Liên hệ</a>
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
                            <a class="dropdown-item" href="#">Trang cá nhân</a>
                            <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                            <a class="dropdown-item" href="<c:url value="/logout" />">Đăng xuất</a>
                        </div>
                    </div>
                </c:when>
            </c:choose>
            <button>Menu</button>
		</nav>
	</div>
</header>
