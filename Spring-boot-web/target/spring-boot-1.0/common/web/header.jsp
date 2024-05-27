<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<nav class="navbar-expand-lg navbar-dark fixed-top">
		<div class="row navbar">
			<div class="col-12 col-md-3">
				<div class="logo">
					<a href="">
						<img src="https://icpc.ptit.edu.vn/2020/images/logo_ptit.png" alt="Logo">
					</a>
				</div>
			</div>
			<div class="col-12 col-md-6">
				<div class="item-menu">
					<div class="nav nav1">
						<div class="nav-item p-2">
							<a class="nav-item-link" href="/trang-chu">
								<span style="color: var(--primary-color);">Trang chủ</span>
							</a>
						</div>
						<security:authorize access="hasRole('STUDENT')">
							<div class="nav-item p-2">
								<a class="nav-item-link" href="/info-<%=SecurityUtils.getPrincipal().getUsername()%>">
									<span style="color: var(--primary-color);">Thông tin của bạn</span>
								</a>
							</div>
						</security:authorize>
						<div class="nav-item p-2">
							<a href='<c:url value='/gioi-thieu'/>'>
								<%--<span>Giới thiệu</span>--%>
								<span style="color: var(--primary-color);">Giới thiệu</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='https://jobs.ptit.edu.vn/'>
								<span style="color: var(--primary-color);">Job cho sinh viên</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/tin-tuc'/>'>
								<%--<span>Tin tức</span>--%>
								<span style="color: var(--primary-color);">Tin tức SV</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/lien-he'/>'>
								<%--<span>Liên hệ</span>--%>
									<span style="color: var(--primary-color);">Liên hệ</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<%--<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
						<%--<span class="sr-only">(current)</span>--%>
					<%--</a></li>--%>
					<security:authorize access = "isAnonymous()">
						<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
					</security:authorize>
					<security:authorize access = "isAuthenticated()">
						<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>
						<security:authorize access="hasAnyRole('MANAGER','TEACHER')">
							<li class><a class="nav-link" href="<c:url value='/admin/home'/>">ADMIN HOME</a></li>
						</security:authorize>
						<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>
					</security:authorize>
				</ul>
			</div>
		</div>
</nav>