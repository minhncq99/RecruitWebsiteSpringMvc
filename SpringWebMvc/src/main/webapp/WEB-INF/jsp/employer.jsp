<%-- 
    Document   : employer
    Created on : Apr 16, 2021, 10:55:10 AM
    Author     : minh
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="employer-header" class="row d-flex justify-content-center text-center p-3 mb-4"
     style="background-image:  url(<c:url value="/resources/images/employer_header.jpg"/>)">
    <h2 class="col-6">Quản lý thông tin nhà tuyển dụng</h2>
</div>    
<div id="employer-content" class="row d-flex justify-content-around text-center">
    <div class="col-3 text-center">
        <div class="pt-1 pb-2">Công cụ</div>
        <div>
            <a href="#" class="btn btn-primary form-control">Đăng tin mới</a>
            <a href="#" class="btn btn-primary form-control">Thống kê</a>
            <a href="#" class="btn btn-primary form-control">Lịch sử đăng tin</a>
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
        <h3 class="p-3">Đăng tin mới</h3>
        <form id="addNews" method="POST">
            <div class="form-group py-2">
                <label for="name">Tên bài đăng</label>
                <input id="name" class="form-control" type="text"/>
            </div>
            <div class="form-group py-2">
                <label for="salary">Mức lương</label>
                <input id="salary" class="form-control" type="text"/>
            </div>
            <div class="form-group py-2">
                <label for="experiance">Kinh nghiệm yêu cầu</label>
                <input id="experiance" class="form-control" type="text"/>
            </div>
            <div class="form-group py-2">
                <label for="typeWorking">Hình thức làm việc</label>
                <input id="typeWorking" class="form-control" type="text"/>
            </div>
            <div class="form-group py-2 row">
                <div class="col-6">
                    <label for="dateStart">Ngày bắt đầu nhận CV</label>
                    <input id="dateStart" class="form-control" type="date"/>
                </div>
                <div class="col-6">
                    <label for="dateEnd">Ngày kết thúc tuyển</label>
                    <input id="dateEnd" class="form-control" type="date"/>
                </div>
            </div>
            <div class="form-group py-2 row">
                <div class="col-6">
                    <label for="career">Ngành nghề</label>
                    <select id="career" class="form-control" type="text">
                        <option></option>
                    </select>
                </div>
                <div class="col-6">
                    <label for="location">Nơi làm việc</label>
                    <select id="location" class="form-control" type="text">
                        <option></option>
                    </select>
                </div>
            </div>
            <div class="form-group py-2">
                <label for="description">Mô tả công việc</label>
                <textarea id="description" class="form-control" type="text"></textarea>
            </div>
            <input class="form-control btn btn-success" type="submit" value="Tạo bài đăng">
        </form>
    </div>
</div>
