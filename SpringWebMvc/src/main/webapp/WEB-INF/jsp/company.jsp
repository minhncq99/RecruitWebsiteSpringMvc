<%-- 
    Document   : company
    Created on : Apr 10, 2021, 3:37:12 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-3 sidenav hidden-xs">
            <div style="margin-top: 20px">
                <form action="/action_page.php">
                    <h6>Tìm công việc phù hợp</h6>
                        <input type="text" class="form-control" placeholder="Tìm kiếm công việc">
                    <h6>Ngành nghề</h6>
                        <select class="form-control">Ngành nghề
                            <option selected>Chọn ngành nghề</option>
                            <c:forEach items="${careers}" var="c">
                                <option value="${c.id}">${c.name}</option>
                            </c:forEach>
                        </select>
                    <h6>Tỉnh thành</h6>
                        <select class="form-control">
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
                <div class="col">
                    <div class="card">
                      <img src="<c:url value="/resources/images/sps.jpg" />" alt="sps" style="width:100%">
                      <div class="container">
                        <h2>John Doe</h2>
                        <p class="title">Designer</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>example@example.com</p>
                        <p><button class="button">Contact</button></p>
                      </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                      <img src="<c:url value="/resources/images/sps.jpg" />" alt="sps" style="width:100%">
                      <div class="container">
                        <h2>John Doe</h2>
                        <p class="title">Designer</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>example@example.com</p>
                        <p><button class="button">Contact</button></p>
                      </div>
                    </div>
                </div>
                <div class="col">
                  <div class="card">
                    <img src="<c:url value="/resources/images/sps.jpg" />" alt="sps" style="width:100%">
                    <div class="container">
                      <h2>John Doe</h2>
                      <p class="title">Designer</p>
                      <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                      <p>example@example.com</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card">
                    <img src="<c:url value="/resources/images/sps.jpg" />" alt="sps" style="width:100%">
                    <div class="container">
                      <h2>John Doe</h2>
                      <p class="title">Designer</p>
                      <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                      <p>example@example.com</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>    
                <div class="col">
                    <div class="card">
                      <img src="<c:url value="/resources/images/sps.jpg" />" alt="sps" style="width:100%">
                      <div class="container">
                        <h2>John Doe</h2>
                        <p class="title">Designer</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>example@example.com</p>
                        <p><button class="button">Contact</button></p>
                      </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                      <img src="<c:url value="/resources/images/sps.jpg" />" alt="sps" style="width:100%">
                      <div class="container">
                        <h2>John Doe</h2>
                        <p class="title">Designer</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>example@example.com</p>
                        <p><button class="button">Contact</button></p>
                      </div>
                    </div>
                </div>
            </div>
            
        </div>    
    </div>
    </div>
</div>
<script src="<c:url value="/resources/js/company.js"/>"></script>

