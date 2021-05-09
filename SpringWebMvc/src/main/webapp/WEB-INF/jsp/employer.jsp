<%-- 
    Document   : employer
    Created on : Apr 16, 2021, 10:55:10 AM
    Author     : minh
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="employer-header" class="row d-flex justify-content-center text-center p-3 mb-4"
     style="background-image:  url(<c:url value="/resources/images/employerheader.png"/>)">
</div>    
<div id="employer-content" class="row d-flex justify-content-around text-center">
    <div class="col-3 text-center">
        <div class="pt-1 pb-2">Thao tác</div>
        <div>
            <a href="<c:url value='/employer/'/>" class="btn btn-primary form-control">Đăng tin mới</a>
            <a href="<c:url value='/employer/'/>" class="btn btn-primary form-control">Thống kê</a>
            <a href="<c:url value='/employer/search-app'/>" class="btn btn-primary form-control">Tìm ứng viên</a>
            <a href="<c:url value='/employer/history'/>" class="btn btn-primary form-control">Lịch sử đăng tin</a>
            <div class="row justify-content-center">
                <div class="col-12">
                    <form class="form-group row justify-content-center">
                        <div class="col-8">
                            <input class="form-control form-control-borderless" type="search" placeholder="Tên bài đăng">
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
            <%-- Create News --%>
            <c:when test="${action == null}">
                ${addError}
                ${addSuccess}
                <form:form id="addNews" method="POST" action="/SpringWebMvc/employer/addNews/" modelAttribute="news">
                    <h3 class="p-3">Đăng bảng tin</h3>
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
                <%-- History --%>
                <h3 class="p-3">Lịch sử bài đăng</h3>
                <div class="row my-4">
                    <c:forEach items="${newsList}" var="n">
                        <div class="col-6">
                            <div class="card-news">
                                <div class="additional">
                                    <div class="user-card">${n.name}</div>
                                    <div class="more-info">
                                        <div>
                                            <p>Chức vụ: ${n.typeWorking}</p>
                                            <p>Ngày bắt đầu: ${n.timeStart}</p>
                                            <p>Ngày kết thúc: ${n.timeStart}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="general">
                                    <h3>${n.name}</h3>
                                    <p>Mức lương: ${n.salary}</p>
                                    <p>Kinh nghiệm yêu cầu: ${n.experiance}</p>
                                    <p>Ngành: ${n.career.name}</p>
                                    <p>Nơi làm việc: ${n.location.name}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <nav aria-label="pagination" class="d-flex justify-content-end">
                    <ul class="pagination">
                        <li class="page-item ${previous}">
                            <a class="page-link" href="<c:url value='/employer/history/${select -1}'/>">Previous</a>
                        </li>
                        <c:forEach items="${listPage}" var="l">
                            <c:choose>
                                <c:when test="${l == select}">
                                    <li class="page-item active">
                                        <a class="page-link" href="#">${l} <span class="sr-only">(current)</span></a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link" href="<c:url value='/employer/history/${l}'/>">${l}</a></li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        <li class="page-item ${next}">
                            <a class="page-link" href="<c:url value='/employer/history/${select +1}'/>">Next</a>
                        </li>
                    </ul>
                </nav>
            </c:when>
            <c:when test="${action == 'search-app'}">
                <div id="search-applicant">
                    <h3>Tìm kiếm ứng viên</h3>
                    <form class="row" action="<c:url value="/employer/search-app/"/>" method="GET">
                        <div class="col-6 p-1">
                            <input type="text" class="form-control rounded" value="${keyword}" 
                                   placeholder="Nhập tên ứng viên" name="keyword"/>
                        </div>
                        <div class="col-5 p-1">
                            <select class="form-control" name="career">
                                <option value="0" selected>Chọn ngành nghề</option>
                                <c:forEach items="${career}" var="c">
                                    <option value="${c.id}">${c.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-1 p-1">
                            <button type="submit" class="btn btn-success border-0">
                                Tìm
                            </button>
                        </div>
                    </form>
                    <div class="row my-3">
                        <c:forEach items="${applicantList}" var="a">
                            <div class="col-4">
                                <div class="card-container">
                                    <img class="round" src="<c:url value="/resources/images/user_profile_img.png" />" alt="user">
                                    <div class="container-text">
                                        <h5>${a.user.name}</h5>
                                        <p>Email: ${a.user.email}</p>
                                        <p>Experience: ${a.experiance}</p>
                                        <p>Career: ${a.career.name}</p>
                                        <p>Description: ${a.description}</p>
                                    </div>
                                    <div class="button-detail">
                                        <a type="button" class="btn btn-success">More</a>
                                    </div>
                                </div>   
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </c:when>
        </c:choose>
    </div>
</div>
