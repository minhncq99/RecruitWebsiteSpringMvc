<%-- 
    Document   : register
    Created on : Apr 9, 2021, 11:14:04 AM
    Author     : minh
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container" id="register-container">
    <div id="register-block" >
        <div class="row w-100" >
            <a href="<c:url value="/register/" />" type="button" class="btn btn-primary col-6 active">Ứng viên</a>
            <a href="<c:url value="/register/empl/" />" type="button" class="btn btn-primary col-6">Nhà tuyển dụng</a>
        </div>

        <c:choose>
            <c:when test="${form == null}">
                <form:form id="user" method="POST" action="/SpringWebMvc${register_applicant}/" modelAttribute="applicant">
                    <div class="row justify-content-around">
                        <img height="120px" width="120px" 
                             src="<c:url value="/resources/images/user.png" />" 
                             alt="logo">
                    </div>
                    <div class="form-group">
                        <form:label path="username">Tên đăng nhập</form:label>
                        <form:input path="username" class="form-control" type="text" />
                        <form:errors path="username" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="password">Mật Khẩu</form:label>
                        <form:input path="password" class="form-control" type="password" />
                        <form:errors path="password" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="rePassword">Nhập lại mật khẩu</form:label>
                        <form:input path="rePassword" class="form-control" type="password" />
                        <form:errors path="rePassword" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="name">Họ và tên</form:label>
                        <form:input path="name" class="form-control" type="text" />
                        <form:errors path="name" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="gender">Giới tính</form:label>
                        <form:select path="gender" class="form-control">
                            <form:option value="" label=""/>
                            <form:option value="Nam" label="Nam" />
                            <form:option value="Nữ" label="Nữ" />
                        </form:select>
                    </div>
                    <div class="form-group">
                        <form:label path="email">Địa chỉ email</form:label>
                        <form:input path="email" class="form-control" type="text"/>
                        <form:errors path="email" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="careerId">Ngành nghề</form:label>
                        <form:select path="careerId" class="form-control">
                            <c:forEach items="${careers}" var="c">
                                <form:option value="${c.id}" label="${c.name}"/>
                            </c:forEach>
                        </form:select>
                        
                        <form:errors path="careerId" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="experiance">Trình độ học vấn</form:label>
                        <form:input path="experiance" class="form-control" type="text"/>
                    </div>

                    <div class="form-group">
                        <form:label path="description">Mô tả về bản thân</form:label>
                        <form:textarea path="description" class="form-control" rows="3" />
                    </div>
                    <input class="form-control btn btn-success" type="submit" value="Đăng Ký">
                </form:form>
            </c:when>
            <c:otherwise>
                <form:form id="manager" method="POST" action="/SpringWebMvc${register_employer}/" modelAttribute="employer">
                    <div class="row justify-content-around">
                        <img height="120px" width="120px" 
                             src="<c:url value="/resources/images/manager.png" />" 
                             alt="logo">
                    </div>
                    <div class="form-group">
                        <form:label path="userName">Tên đăng nhập</form:label>
                        <form:input path="userName" cssClass="form-control" type="text"/>
                        <form:errors path="userName" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="password">Mật Khẩu</form:label>
                        <form:input path="password" cssClass="form-control" type="password" />
                        <form:errors path="password" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="rePassword">Nhập lại mật khẩu</form:label>
                        <form:input path="rePassword" cssClass="form-control" type="password" />
                        <form:errors path="rePassword" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="name">Tên công ty</form:label>
                        <form:input path="name" cssClass="form-control" type="text"/>
                        <form:errors path="name" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="email">Địa chỉ email</form:label>
                        <form:input path="email" cssClass="form-control" type="text"/>
                        <form:errors path="email" cssClass="text-danger" />
                    </div>
                    <div class="form-group">
                        <form:label path="location_id">Nơi làm việc</form:label>
                        <form:select path="location_id" cssClass="form-control">
                            <c:forEach items="${locations}" var="l">
                                <form:option value="${l.id}" label="${l.name}"/>
                            </c:forEach>
                        </form:select>
                        <form:errors path="location_id" cssClass="text-danger" />
                    </div>
                        <div class="form-group">
                        <form:label path="description">Mô tả về công ty</form:label>
                        <form:textarea path="description" cssClass="form-control" rows="3" />
                    </div>

                    <input class="form-control btn btn-success" type="submit" value="Đăng Ký">
                </form:form>
            </c:otherwise>
        </c:choose>
        
        <div class="text-center py-2">
            <a href="<c:url value="/login/"/>">Đã có tài khoản</a>
        </div>
        <script src="<c:url value="/resources/js/register.js"/>"></script>
    </div>
</div>