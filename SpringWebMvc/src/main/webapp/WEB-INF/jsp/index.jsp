<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="row my-3">
    <h4 class="col-12 text-center">Bản tin mới nhất</h4>
    <c:forEach items="${news}" var="n"> 
        <div class="col-3 my-2">
            <div class="card">
                <img id="imgCard" src="<c:url value="/resources/images/company.png" />" alt="sps">
                <div class="container">
                    <a href="<c:url value="/news-details?newsid=${n.id}" />"><h4>${n.employer.user.name}</h4></a>
                    <p>Ngành: ${n.career.name}</p>
                    <p>Nơi làm việc: ${n.location.name}</p>
                    <p>Chức vụ: ${n.typeWorking}</p>
                    <% if (request.isUserInRole("ROLE_APPLICANT")) { %>
                        <form method="POST" action="<c:url value="/applicant/apply?news=${n.id}&username=${pageContext.request.userPrincipal.name}" />">
                            <button type="submit" class="button">Ứng tuyển</button></p>
                        </form>
                    <% } else { %>
                        <p><button class="button" disabled>Vui lòng đăng nhập tài khoản ứng viên</button></p>
                    <% } %>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<!-- Container (TOUR Section)  -->
<div id="tour" class="bg-1">
    <div class="container">
        <h3 class="text-center">TOUR OFFICES</h3>
        <div class="row text-center">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="<c:url value="/resources/images/work1.jpg" />" alt="Paris" width="400" height="300">
                    <p><strong>Hồ Chí Minh</strong></p>
                    <p>Thứ 6, 27/05/2015</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="<c:url value="/resources/images/work2.jpg" />" alt="Paris" width="400" height="300">
                    <p><strong>Hà Nội</strong></p>
                    <p>Thứ 2, 11/03/2015</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="<c:url value="/resources/images/work3.jpg" />" alt="Paris" width="400" height="300">
                    <p><strong>Đà Nẵng</strong></p>
                    <p>Thứ 5, 29/11/2015</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="read">
    <button class="btn"><a href="<c:url value="/news/" />">Xem thêm</a></button>
</div>