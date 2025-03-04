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
		<h1>Thay Đổi Lịch Hoạt Động Mẫu Giáo</h1>
					<div class="separator"></div>
		</header>
	</article>
	
<div class="content-bg">
	<div class="container">

		<c:url var="updateAction" value="/admin/Lichhdmaugiao/Update"></c:url>
		<form:form method="POST" action="${updateAction}" commandName="FLichhdmaugiao"
			class="form-horizontal col-md-6">
			<div class="form-group">
				<form:input type="hidden" class="form-control" path="lichhdmaugiaoid" />
			</div>
			<div class="form-group">
				<label>Thời Gian:</label>
				<form:input type="text" class="form-control" placeholder="Từ 00h đến 00h ..." path="thoigian" />
			</div>
			
			<div class="form-group">
				<label>Hoạt Động:</label>
				<form:input type="text" class="form-control" placeholder="Nhập Hoạt Động Mẫu Giáo..." path="hoatdong" />
			</div>
			
			<div class="form-group">
				<button type="submit" class="btn btn-success">Đồng ý</button>
			</div>
		</form:form>
	</div>
</section>

                       
    
<%@ include file="/resources/common/footeradmin.jsp"%>    
           