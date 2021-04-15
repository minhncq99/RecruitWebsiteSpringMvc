<%-- 
    Document   : register
    Created on : Apr 9, 2021, 11:14:04 AM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container" id="register-container">
    <div id="register-block" >
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
            <div class="form-group">
                <label for="user_username">Tên đăng nhập</label>
                <input id="user_username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="user_password">Mật Khẩu</label>
                <input id="user_password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="user_repassword">Nhập lại mật khẩu</label>
                <input id="user_repassword" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="user_name">Họ và tên</label>
                <input id="user_name" class="form-control" type="text">
            </div>
            <div class="form-row">
                <div class="col">
                    <div class="form-group">
                        <label for="user_phone">Số điện thoại</label>
                        <input id="user_phone" type="text" class="form-control">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="user_gender">Giới tính</label>
                        <select id="user_gender" class="form-control">
                            <option selected></option>
                            <option value="0">Nam</option>
                            <option value="1">Nữ</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="user_email">Địa chỉ email</label>
                <input id="user_email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="user_career">Ngành nghề</label>
                <select id="user_career" class="form-control">
                    <option selected></option>
                    <c:forEach items="${careers}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="user_experiance">Trình độ học vấn</label>
                <input id="user_experiance" class="form-control" type="text">
            </div>

            <div class="form-group">
                <label for="user_description">Mô tả về bản thân</label>
                <textarea id="user_description" class="form-control" rows="3"></textarea>
            </div>
            <input class="form-control btn btn-success" type="submit" value="Đăng Ký">
        </form>
        <form:form id="manager" method="POST" action="/SpringWebMvc${register_employer}/" modelAttribute="employer">
            <div class="row justify-content-around">
                <img height="120px" width="120px" 
                     src="<c:url value="/resources/images/manager.png" />" 
                     alt="logo">
            </div>
            <form:errors path="*" element="div" />
            <div class="form-group">
                <form:label path="userName">Tên đăng nhập</form:label>
                <form:input path="userName" cssClass="form-control" type="text"/>
            </div>
            <div class="form-group">
                <form:label path="password">Mật Khẩu</form:label>
                <form:input path="password" cssClass="form-control" type="password" />
            </div>
            <div class="form-group">
                <form:label path="rePassword">Nhập lại mật khẩu</form:label>
                <form:input path="rePassword" cssClass="form-control" type="password" />
            </div>
            <div class="form-group">
                <form:label path="name">Tên công ty</form:label>
                <form:input path="name" cssClass="form-control" type="text"/>
            </div>
            <div class="form-group">
                <form:label path="email">Địa chỉ email</form:label>
                <form:input path="email" cssClass="form-control" type="text"/>
            </div>
            <div class="form-group">
                <form:label path="location_id">Nơi làm việc</form:label>
                <form:select path="location_id" cssClass="form-control" type="number">
                    <c:forEach items="${locations}" var="l">
                        <form:option value="${l.id}" label="${l.name}"/>
                    </c:forEach>
                </form:select>
            </div>
                <div class="form-group">
                <form:label path="description">Mô tả về công ty</form:label>
                <form:textarea path="description" cssClass="form-control" rows="3" />
            </div>

            <input class="form-control btn btn-success" type="submit" value="Đăng Ký">
        </form:form>
        <div>
            <a href="<c:url value="/login/"/>">Đã có tài khoản</a>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/js/register.js"/>"></script>