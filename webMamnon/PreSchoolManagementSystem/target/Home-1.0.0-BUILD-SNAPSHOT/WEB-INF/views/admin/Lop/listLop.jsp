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
			<h1>Danh sách Lớp</h1>
						<div class="separator"></div>
		</header>
	</article>
<div class="content-bg">
<div id="comments" class="comments-area">
	<div class="container">
		<div align="center" style="margin-right:100px">

			<h5 style="text-align: left;">
				<a href="<c:url value='/admin/Lop/New' />" class="btn btn-success">Thêm Mới</a>
			</h5>
			<br>
			<c:url var="searchAction" value="/admin/Lop/Search"></c:url>
			<form:form action="${searchAction}" method="GET">
				<div class="col-lg-4">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Tìm theo Tên Lớp ..." value="${searchString}" name="searchString" />
						<span class="input-group-btn">
							<button class="btn btn-primary" type="submit">Tìm kiếm</button>
						</span>
					</div>
					<!-- /input-group -->
					<br>
				</div>
			</form:form>


			<table class="table table-hover">
				<th>ID</th>
				<th>Lớp</th>
				<th>Học Sinh</th>
				<th>Giáo Viên</th>
				<th>Bảo Mẫu</th>
		
				<th>Action</th>
				<c:if test="${empty searchString}">
				<c:forEach var="Lop" items="${LLop}" varStatus="status">
					<tr>
						<td>${Lop.lopid}</td>
						<td>${Lop.xeplop.tenxeplop}</td>
						<td>${Lop.hocsinh.tenhs}</td>
						<td>${Lop.xeplop.giaovien.tengv}</td>
						<td>${Lop.xeplop.baomau.tenbaomau}</td>
						
						
						<td><a href="<c:url value='/admin/Lop/Edit/${Lop.lopid}' />" class="btn btn-primary">Edit</a>
							<a href="<c:url value='/admin/Lop/Remove/${Lop.lopid}' />" class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
				</c:if>
			</table>
		</div>
	</div>
</section>

                       
    
<%@ include file="/resources/common/footeradmin.jsp"%>    
           