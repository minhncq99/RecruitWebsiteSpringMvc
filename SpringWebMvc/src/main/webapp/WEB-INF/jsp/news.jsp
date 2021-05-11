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
                    <p>Ngành nghề: ${n.career.name}</p>
                    <p>Nơi làm việc: ${n.location.name}</p>
                    <p>Chức vụ: ${n.typeWorking}</p>
                    <% if (request.isUserInRole("ROLE_APPLICANT")) { %>
                        <form method="POST" action="<c:url value="/applicant/apply/?news=${n.id}&username=${pageContext.request.userPrincipal.name}" />">
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

<script src="<c:url value="/resources/js/company.js"/>"></script>
