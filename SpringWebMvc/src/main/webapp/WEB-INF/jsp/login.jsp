<%-- 
    Document   : login
    Created on : Apr 9, 2021, 8:46:51 AM
    Author     : minh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container" id="login-container">
    <div id="login-block" >
        <div class="row w-100" >
            <p type="button" class="btn btn-primary col-6 active">Ứng viên</p>
            <p type="button" class="btn btn-primary col-6">Nhà tuyển dụng</p>
        </div>
        <form id="user" method="POST">
            <div class="row justify-content-around">
                <img height="120px" width="120px" 
                     src="<c:url value="/resources/images/user.png" />" 
                     alt="logo">
            </div>
            <input class="form-control" type="text" name="login" placeholder="Tên đăng nhập">
            <input class="form-control" type="password"  name="login" placeholder="Mật khẩu">
            <input class="form-control btn btn-success" type="submit" value="Đăng Nhập">
        </form>
        <form id="manager" method="POST">
            <div class="row justify-content-around">
                <img height="120px" width="120px" 
                     src="<c:url value="/resources/images/manager.png" />" 
                     alt="logo">
            </div>
            <input class="form-control" type="text" name="login" placeholder="Tên đăng nhập">
            <input class="form-control" type="password"  name="login" placeholder="Mật khẩu">
            <input class="form-control btn btn-success" type="submit" value="Đăng Nhập">
        </form>
        <div>
            <a href="#">Quên mật khẩu</a>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/js/login.js"/>"></script>