<%-- 
    Document   : banner
    Created on : Apr 8, 2021, 1:17:48 PM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="banner" style="background-image:  url(<c:url value="/resources/images/banner.jpg"/>)">
    <div id="banner-model">
        <h2 class="w-100 text-center">Tìm công việc phù hợp với bạn</h2>
        <form class="row align-items-center">
            <div class="find-block col-4">
                <input type="text" class="form-control" placeholder="Tìm kiếm công việc">
            </div>
            <div class="find-block col-3">
                <select class="form-control">
                    <option selected>Chọn ngành nghề</option>
                    <c:forEach items="${careers}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="find-block col-3">
                <select class="form-control">
                    <option selected>Chọn tỉnh thành</option>
                    <c:forEach items="${locations}" var="l">
                        <option value="${l.id}">${l.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="find-block col-2">
                <button type="submit" class="form-control btn btn-success">Tìm kiếm</button>
            </div>
        </form>
    </div>
</section>
