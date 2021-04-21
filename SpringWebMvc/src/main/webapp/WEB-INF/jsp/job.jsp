<%-- 
    Document   : job
    Created on : Apr 12, 2021, 11:24:57 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="pricing" class="container-fluid">
    <div class="text-center">
      <h2>Pricing</h2>
      <h4>Choose a appropriate work for you</h4>
    </div>
    <div class="row slideanim">
      <div class="col-sm-4 col-xs-12">
        <div class="panel panel-default text-center">
          <div class="panel-heading">
            <h5>Front-end Developer (React)</h5>
          </div>
          <div class="panel-body">
            <p>Entry level</p>
            <p>Full-time</p>
            <p>Knowledge of TypeScript</p>
          </div>
          <div class="panel-footer">
            <h5>$49</h5>
            <h5>per month</h5>
            <button class="btn btn-lg">Sign Up</button>
          </div>
        </div>  
      </div>     
      <div class="col-sm-4 col-xs-12">
        <div class="panel panel-default text-center">
          <div class="panel-heading">
            <h5>Game Designer</h5>
          </div>
          <div class="panel-body">
            <p>Mid-Senior levell</p>
            <p>Full-time</p>
            <p>F2P market insights</p>
          </div>
          <div class="panel-footer">
            <h5>$49</h5>
            <h5>per month</h5>
            <button class="btn btn-lg">Sign Up</button>
          </div>
        </div>    
      </div>       
      <div class="col-sm-4 col-xs-12">
        <div class="panel panel-default text-center">
          <div class="panel-heading">
            <h5>Treatment Planning Doctor</h5>
          </div>
          <div class="panel-body">
            <p>Seniority Level</p>
            <p>Full-time</p>
            <p>Health Care Provider</p>
          </div>
          <div class="panel-footer">
            <h5>$49</h5>
            <h5>per month</h5>
            <button class="btn btn-lg">Sign Up</button>
          </div>
        </div>      
      </div>    
    </div>
</div>
<div id="about" class="container">
  <div id="banner" style="background-image:  url(<c:url value="/resources/images/banner.jpg"/>)">
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
</div>
