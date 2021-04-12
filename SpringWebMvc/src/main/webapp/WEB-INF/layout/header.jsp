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
			<img src="https://assets.codepen.io/285131/acme-2.svg" />
		</div>
		<nav class="header-navigation">
			<a class="nav-link" href="<c:url value="/" />">Trang chủ</a>
			<a class="nav-link" href="<c:url value="/" />">Tìm việc</a>
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

<!-- Content -->
<main class="main">
	<div class="main-content responsive-wrapper">
		<article class="widget">
			<h2>How does it work without JS? 🤯</h2>
			<p>This sticky header consists of two elements: an <strong>outer</strong> and an <strong>inner</strong> container. The outer container is taller than the inner — and the inner is centered vertically.
			<p>By utilizing the <code>position: sticky</code> property <strong>twice</strong>, both on the header's <strong>outer container</strong> and <strong>inner container</strong> the outer container will stick to the <code>body</code>, while the inner container will stick to the outer container.</p>
			<p>Note that the outer container has a negative <code>top</code> value equal to the height difference between the two containers. This causes the outer container to stick <strong>above</strong> the <code>body</code>, making the inner container stick to the "ceiling" on scroll.
			<p></p>
		</article>
	</div>
</main>