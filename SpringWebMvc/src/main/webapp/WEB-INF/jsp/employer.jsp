<%-- 
    Document   : employer
    Created on : Apr 16, 2021, 10:55:10 AM
    Author     : minh
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="employer-header" class="row d-flex justify-content-center text-center p-3 mb-4"
     style="background-image:  url(<c:url value="/resources/images/employer_header.jpg"/>)">
    <h2 class="col-6">Quản lý thông tin nhà tuyển dụng</h2>
</div>    
<div id="employer-content" class="row d-flex justify-content-around text-center">
    <div class="col-3 text-center">
        <div class="pt-1 pb-2">Công cụ</div>
        <div>
            <a href="<c:url value='/employer/'/>" class="btn btn-primary form-control">Đăng tin mới</a>
            <a href="<c:url value='/employer/'/>" class="btn btn-primary form-control">Thống kê</a>
            <a href="<c:url value='/employer/history'/>" class="btn btn-primary form-control">Lịch sử đăng tin</a>
            <div class="row justify-content-center">
                <div class="col-12">
                    <form class="form-group row justify-content-center">
                        <div class="col-8">
                            <input class="form-control form-control-borderless" type="search" placeholder="Nhập vào tên bài đăng">
                        </div>
                        <div class="col-4">
                            <button class="btn btn-success" type="submit">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="col-9">
        <c:choose>
            <c:when test="${action == null}">
                <h3 class="p-3">Đăng tin mới</h3>
                ${addError}
                ${addSuccess}
                <form:form id="addNews" method="POST" action="/SpringWebMvc/employer/addNews/" modelAttribute="news">
                    <div class="form-group py-2">
                        <form:label path="name">Tên bài đăng</form:label>
                        <form:input path="name" class="form-control" type="text"/>
                        <form:errors path="name" cssClass="text-danger" />
                    </div>
                    <div class="form-group py-2">
                        <form:label path="salary">Mức lương</form:label>
                        <form:input path="salary" class="form-control" type="text"/>
                        <form:errors path="salary" cssClass="text-danger" />
                    </div>
                    <div class="form-group py-2">
                        <form:label path="experiance">Kinh nghiệm yêu cầu</form:label>
                        <form:input path="experiance" class="form-control" type="text"/>
                        <form:errors path="experiance" cssClass="text-danger" />
                    </div>
                    <div class="form-group py-2">
                        <form:label path="typeWorking">Hình thức làm việc</form:label>
                        <form:input path="typeWorking" class="form-control" type="text"/>
                        <form:errors path="typeWorking" cssClass="text-danger" />
                    </div>
                    <div class="form-group py-2 row">
                        <div class="col-6">
                            <form:label path="timeStart">Ngày bắt đầu tuyển dụng</form:label>
                            <form:input path="timeStart" class="form-control" type="date"/>
                            <form:errors path="timeStart" cssClass="text-danger" />
                        </div>
                        <div class="col-6">
                            <form:label path="timeEnd">Ngày kết thúc tuyển dụng</form:label>
                            <form:input path="timeEnd" class="form-control" type="date"/>
                            <form:errors path="timeEnd" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group py-2 row">
                        <div class="col-6">
                            <form:label path="careerId">Ngành nghề</form:label>
                            <form:select path="careerId" class="form-control" type="text">
                                <c:forEach items="${careers}" var="c">
                                    <form:option value="${c.id}" label="${c.name}" />
                                </c:forEach>
                            </form:select>
                            <form:errors path="careerId" cssClass="text-danger" />
                        </div>
                        <div class="col-6">
                            <form:label path="locationId">Nơi làm việc</form:label>
                            <form:select path="locationId" class="form-control" type="text">
                                <c:forEach items="${location}" var="l">
                                    <form:option value="${l.id}" label="${l.name}" />
                                </c:forEach>
                            </form:select>
                            <form:errors path="locationId" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group py-2">
                        <form:label path="description">Mô tả công việc</form:label>
                        <form:textarea path="description" cssClass="form-control" rows="3" />
                    </div>
                    <input class="form-control btn btn-success" type="submit" value="Tạo bài đăng">
                    
                </form:form>
            </c:when>
            <c:when test="${action == 'history'}">
                <h3 class="p-3">Lịch sử bài đăng</h3>
                <c:forEach items="${newsList}" var="n">
                    <div class="news-container">
                        <div class="news-title">${n.name}</div>
                        <div class="row">
                            <div class="col-6 text-left">
                                <p>Mức lương: ${n.salary}</p>
                                <p>Kinh nghiệm yêu cầu: ${n.experiance}</p>
                                <p>Ngành nghề: ${n.career.name}</p>
                                <p>Nơi làm việc: ${n.location.name}</p>
                            </div>
                            <div class="col-6 text-right">
                                <p>Hình thức làm việc: ${n.typeWorking}</p>
                                <p>Ngày bắt đầu: ${n.timeStart}</p>
                                <p>Ngày kết thúc: ${n.timeStart}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
        </c:choose>
    </div>
    
    <!-- History -->
</div>
