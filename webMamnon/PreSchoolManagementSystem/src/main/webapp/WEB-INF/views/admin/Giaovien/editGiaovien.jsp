<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="/resources/common/headeradmin.jsp"%>
<%@ include file="/resources/common/menuadmin.jsp"%>


<section id="content" class="col-lg-7 col-md-8 col-sm-12" role="main">	
	<article id="post-1478" class="post-1478 page type-page status-publish hentry">
		<header class="cloud">
			<h1>Thay Đổi Thông Tin Giáo Viên</h1>
						<div class="separator"></div>
		</header>
	</article>
	
<div class="content-bg">
	<div class="container">
		<c:url var="updateAction" value="/admin/Giaovien/Update"></c:url>
		<form:form method="POST" action="${updateAction}" commandName="FGiaovien"
			class="form-horizontal col-md-6" enctype="multipart/form-data">
			<div class="form-group">
				<form:input type="hidden" class="form-control" path="giaovienid" />
			</div>
			<div class="form-group">
				<label>Tên Giáo Viên:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Tên..." path="tengv" />
			</div>
			<div class="form-group">
				<label>Địa Chỉ:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Địa Chỉ..." path="diachi" />
			</div>
			<div class="form-group">
				<label>Ngày Sinh:</label>
				<form:input type="text" class="form-control" placeholder="MM-DD-YYYY..." path="ngaysinh" />
			</div>
			
			<div class="form-group">
				<label>Giới Tính:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Giới Tính ..." path="gioitinh" />
			</div>
			
			<form:input type="hidden" class="form-control" path="hinhanh" />
			 <div class="form-group">
					<img src="<c:url value="/resources/home/img/people/${hinhanh}"/>"/>
					
			</div>
					
			 <div class="form-group col-md-12">
				<label for="hinhanh">Hình Ảnh:</label> <input type="file"
				class="form-control" name="hinhanhUpload" id="hinhanh" accept="hinhanh/*">
			</div>
			<div class="form-group">
				<label>Điện Thoại:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Điện Thoại ..." path="dienthoai" />
			</div>
			<div class="form-group">
				<label>Email:</label>
				<form:input type="text" class="form-control" placeholder="abc@gmail.com ..." path="email" />
			</div>
			<div class="form-group">
				<label>Trình Độ:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Trình Độ ..." path="trinhdo" />
			</div>
			<div class="form-group">
				<label>Chức Vụ:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Chức Vụ ..." path="chucvu" />
			</div>
			<div class="form-group">
				<label>Năm Kinh Nghiệm:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Số năm kinh nghiệm ..." path="kinhnghiem" />
			</div>
			
			
			<div class="form-group">
				<button type="submit" class="btn btn-success">Đồng ý</button>
			</div>
		</form:form>
	</div>
	
</section>

                       
    
<%@ include file="/resources/common/footeradmin.jsp"%>    
           