<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="main">
	<div class="main-content responsive-wrapper">
		<article class="widget">
			<h2 class="text-center">What Am I? 🤯</h2>
			<p>Founded in London in 1975, JAC Recruitment’s network now spans across 11 countries worldwide.</p>
			<p> With more than 1200 professional consultants globally, we specialize in placing high-caliber professionals with major multinational companies.</p>
			<p>As recruitment experts in our industries of operation, we offer job-seekers seeking new opportunities for development.</p>
		</article>
	</div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
	<h2>SERVICES</h2>
	<h4>What we offer</h4>
	<br>
	<div class="row slideanim">
	  <div class="col-sm-4">
		<span class="logo-small">
			<img src="<c:url value="/resources/images/iconfinder_22_5027817.png" />" alt="logo">
		</span>
		<h4>POWER</h4>
		<p>Lorem ipsum dolor sit amet..</p>
	  </div>
	  <div class="col-sm-4">
		<span class="logo-small">
			<img src="<c:url value="/resources/images/iconfinder_24_5027818.png" />" alt="logo">
		</span>
		<h4>TRANSFER</h4>
		<p>Lorem ipsum dolor sit amet..</p>
	  </div>
	  <div class="col-sm-4">
		<span class="logo-small">
			<img src="<c:url value="/resources/images/iconfinder_45_5027839.png" />" alt="logo">
		</span>
		<h4>JOB DONE</h4>
		<p>Lorem ipsum dolor sit amet..</p>
	  </div>
	</div>
	<br><br>
	<div class="row slideanim">
	  <div class="col-sm-4">
		<span class="logo-small">
			<img src="<c:url value="/resources/images/iconfinder_53_5027847.png" />" alt="logo">
		</span>
		<h4>SALARY</h4>
		<p>Lorem ipsum dolor sit amet..</p>
	  </div>
	  <div class="col-sm-4">
		<span class="logo-small">
			<img src="<c:url value="/resources/images/iconfinder_66_5027860.png" />" alt="logo">
		</span>
		<h4>CERTIFIED</h4>
		<p>Lorem ipsum dolor sit amet..</p>
	  </div>
	  <div class="col-sm-4">
		<span class="logo-small">
			<img src="<c:url value="/resources/images/iconfinder_57_5027851.png" />" alt="logo">
		</span>
		<h4 style="color:#303030;">HARD WORK</h4>
		<p>Lorem ipsum dolor sit amet..</p>
	  </div>
	</div>
  </div>

<div class="row justify-content-around my-3">
    <h4 class="col-12 text-center">Bản tin mới nhất</h4>
    <c:forEach items="${news}" var="n"> 
        <div class="col-4">
            <div class="col-12 news-container">
                <h6 class="text-center">${n.employer.user.name} tuyển dụng</h6>
                <p>Ngành nghề: ${n.career.name}</p>
                <p>Nời làm việc: ${n.location.name}</p>
                <p>Nời làm việc: ${n.location.name}</p>
            </div>
        </div>
    </c:forEach>
</div>

  <!-- Container (TOUR Section) -->
<div id="tour" class="bg-1">
	<div class="container">
	  <h3 class="text-center">TOUR DATES</h3>
	  <div class="row text-center">
		<div class="col-sm-4">
		  <div class="thumbnail">
			<img src="<c:url value="/resources/images/work1.jpg" />" alt="Paris" width="400" height="300">
			<p><strong>Paris</strong></p>
			<p>Friday 27 November 2015</p>
		  </div>
		</div>
		<div class="col-sm-4">
		  <div class="thumbnail">
			<img src="<c:url value="/resources/images/work2.jpg" />" alt="Paris" width="400" height="300">
			<p><strong>New York</strong></p>
			<p>Saturday 28 November 2015</p>
		  </div>
		</div>
		<div class="col-sm-4">
		  <div class="thumbnail">
			<img src="<c:url value="/resources/images/work3.jpg" />" alt="Paris" width="400" height="300">
			<p><strong>San Francisco</strong></p>
			<p>Sunday 29 November 2015</p>
		  </div>
		</div>
	  </div>
	</div>