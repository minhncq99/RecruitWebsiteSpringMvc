<%-- 
    Document   : company
    Created on : Apr 10, 2021, 3:37:12 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-3 sidenav hidden-xs pb-3" style="display: flex">
            <div style="margin-top: 20px">
                <form method="GET" action="<c:url value="/search/news/"/>">
                    <h6>Tìm công việc phù hợp</h6>
                        <input name="keyword" type="text" class="form-control" placeholder="Tìm kiếm công việc">
                    <h6>Ngành nghề</h6>
                        <select name="career" class="form-control">Ngành nghề
                            <option value="" selected>Chọn ngành nghề</option>
                            <c:forEach items="${careers}" var="c">
                                <option value="${c.id}">${c.name}</option>
                            </c:forEach>
                        </select>
                        <h6>Tỉnh thành</h6>
                        <select name="location" class="form-control">
                            <option selected>Chọn tỉnh thành</option>
                            <c:forEach items="${locations}" var="l">
                                <option value="${l.id}">${l.name}</option>
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
        </div>    
    </div>
</div>
<script src="<c:url value="/resources/js/company.js"/>"></script>


