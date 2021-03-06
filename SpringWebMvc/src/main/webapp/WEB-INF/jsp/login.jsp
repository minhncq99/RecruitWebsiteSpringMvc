<%-- 
    Document   : login
    Created on : Apr 9, 2021, 8:46:51 AM
    Author     : minh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/login" var="action" />

<c:if test="${param.error != null}">
    <div class="alert alert-danger">
        Something wrong!!!
    </div>
</c:if>

<c:if test="${param.accessDenied != null}">
    <div class="alert alert-danger">
       Access Denied!!! 
    </div>
</c:if>

<div class="container" id="login-container">
    <div id="login-block" >
        <div class="row w-100" >
            <p type="button" class="btn btn-primary col-12">Đăng nhập</p>
        </div>
        <form id="manager" method="POST" action="${action}">
            <div class="row justify-content-around">
                <img height="120px" width="120px" 
                     src="<c:url value="/resources/images/manager.png" />" 
                     alt="logo">
            </div>
            <input name="username" class="form-control" type="text" placeholder="Tên đăng nhập">
            <input name="password" class="form-control" type="password" placeholder="Mật khẩu">
            <input class="form-control btn btn-success" type="submit" value="Đăng Nhập">
        </form>
        <div>
            <a href="#">Quên mật khẩu</a>
        </div>
    </div>
</div>