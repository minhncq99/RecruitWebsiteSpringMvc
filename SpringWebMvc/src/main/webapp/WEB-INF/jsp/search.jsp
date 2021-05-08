<%-- 
    Document   : search
    Created on : Apr 27, 2021, 9:37:37 AM
    Author     : minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String careerId = request.getParameter("career");
    String locationId = request.getParameter("location");
    String keyword = request.getParameter("keyword");
    String urlParam = "/search/news/?keyword=";
%>
<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-3 sidenav hidden-xs pb-3" style="display: flex">
            <div style="margin-top: 20px">
                <form action="<c:url value="/search/news/"/>" method="GET">
                    <h6>Tìm công việc phù hợp</h6>
                    <input name="keyword" type="text" class="form-control" 
                           placeholder="Tìm kiếm công việc" value="${keyword}">
                    <h6>Ngành nghề</h6>
                    <select name="career" class="form-control">Ngành nghề
                        <option value="0">Chọn ngành nghề</option>
                        <c:forEach items="${careers}" var="c">
                            <c:choose>
                                <c:when test="${c.id == careerId}">
                                    <option value="${c.id}" selected>${c.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${c.id}">${c.name}</option>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>
                    </select>
                    <h6>Tỉnh thành</h6>
                    <select name="location" class="form-control">
                        <option value="0">Chọn tỉnh thành</option>
                        <c:forEach items="${locations}" var="l">
                            <c:choose>
                                <c:when test="${l.id == locationId}">
                                    <option value="${l.id}" selected>${l.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${l.id}">${l.name}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                    <button type="submit" class="form-control btn btn-success">Tìm kiếm</button>
                </form>
            </div>
        </div>
        <br>

        <div class="col-sm-9">
            <div class="well">
                <div id="myCarousel" class="carousel slide">
                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="<c:url value="/resources/images/slide1.jpg" />" alt="Công ty TNHH KMS Technology" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/resources/images/slide2.jpg" />" alt="Công ty Cổ phần Viễn thông FPT" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/resources/images/slide3.jpg" />" alt="Công ty TNHH Harvey Nash" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/resources/images/slide4.jpg" />" alt="Công ty TNHH DEK Technologies" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/resources/images/slide5.jpg" />" alt="Công ty TNHH Giải pháp Tin học" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/resources/images/slide6.jpg" />" alt="Công ty TNHH Swiss Post Solutions" width="1100" height="500">
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="prev" onclick="plusSlides(-1)">❮</a>
                    <a class="next" onclick="plusSlides(1)">❯</a>
                </div>
                <div class="caption-container">
                    <p id="caption"></p>
                </div>

                <!-- Thumbnail images -->
                <div class="row">
                    <div class="column">
                        <img class="demo" src="<c:url value="/resources/images/slide1.jpg" />" onclick="currentSlide(1)" alt="Công ty TNHH KMS Technology" width="100%">
                    </div>
                    <div class="column">
                        <img class="demo" src="<c:url value="/resources/images/slide2.jpg" />" onclick="currentSlide(2)" alt="Công ty Cổ phần Viễn thông FPT" width="100%">
                    </div>
                    <div class="column">
                        <img class="demo" src="<c:url value="/resources/images/slide3.jpg" />" onclick="currentSlide(3)" alt="Công ty TNHH Harvey Nash" width="100%">
                    </div>
                    <div class="column">
                        <img class="demo" src="<c:url value="/resources/images/slide4.jpg" />" onclick="currentSlide(4)" alt="Công ty TNHH DEK Technologies" width="100%">
                    </div>
                    <div class="column">
                        <img class="demo" src="<c:url value="/resources/images/slide5.jpg" />" onclick="currentSlide(5)" alt="Công ty TNHH Giải pháp Tin học" width="100%">
                    </div>
                    <div class="column">
                        <img class="demo" src="<c:url value="/resources/images/slide6.jpg" />" onclick="currentSlide(6)" alt="Công ty TNHH Swiss Post Solutions" width="100%">
                    </div>                    
                </div>      
            </div>
            <br><br>
            <div class="row">
                <c:forEach items="${news}" var="n"> 
                    <div class="col-4 my-2">
                        <div class="card">
                            <img src="<c:url value="/resources/images/sps.jpg" />" alt="sps" style="width:100%">
                            <div class="container">
                                <a href="<c:url value="/news-details?newsid=${n.id}" />"><h4>${n.name}</h4></a>
                                <p>Ngành nghề: ${n.career.name}</p>
                                <p>Nơi làm việc: ${n.location.name}</p>
                                <% if (request.isUserInRole("ROLE_APPLICANT")) { %>
                                    <form method="POST" action="<c:url value="/applicant/apply?news=${n.id}&username=${pageContext.request.userPrincipal.name}" />">
                                        <button type="submit" class="button">Ứng tuyển</button></p>
                                    </form>
                                <% } else { %>
                                    <p><button class="button" disabled>Vui lòng đăng nhập tài khoản ứng viên</button></p>
                                <% }%>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>    
    </div>
</div>
<nav aria-label="pagination" class="d-flex justify-content-end">
    <ul class="pagination">
        <li class="page-item ${previous}">
            <a class="page-link" href="<c:url value='/search/news/?keyword=${keyword}&career=${careerId}&location=${locationId}&page=${select -1}'/>'/>">Previous</a>
        </li>
        <c:forEach items="${listPage}" var="l">
            <c:choose>
                <c:when test="${l == select}">
                    <li class="page-item active">
                        <a class="page-link" href="#">${l} <span class="sr-only">(current)</span></a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" href="<c:url value='/search/news/?keyword=${keyword}&career=${careerId}&location=${locationId}&page=${l}'/>">${l}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        <li class="page-item ${next}">
            <a class="page-link" href="<c:url value='/search/news/?keyword=${keyword}&career=${careerId}&location=${locationId}&page=${select +1}'/>">Next</a>
        </li>
    </ul>
</nav>
<script src="<c:url value="/resources/js/company.js"/>"></script>
