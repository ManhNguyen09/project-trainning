<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body class="login-layout">
	<div class="container" style="height: 100vh">
	<div class="login-form">
		<div class="main-div">
			<c:if test="${param.incorrectAccount != null}">
				<div class="alert alert-danger">
					Tên tài khoản hoặc mặt khẩu sai
				</div>
			</c:if>
			<c:if test="${param.accessDenied != null}">
				<div class="alert alert-danger">
					Bạn không có quyền truy cập
				</div>
			</c:if>
			<c:if test="${param.sessionTimeout != null}">
				<div class="alert alert-danger">
					Session Timeout
				</div>
			</c:if>
			<div class="container-fluid" style="padding-top: 100px">
				<section class="gradient-custom">
					<div class="page-wrapper">
						<div class="row d-flex justify-content-center align-items-center">
							<div class="col-12 col-md-8 col-lg-6 col-xl-5">
								<div class="card text-dark" style="border-radius: 1rem; background-color: #F0F7FC;">
									<div class="card-body p-5" style="padding: 20px 40px !important;">
										<div class="mb-md-5 mt-md-4 pb-5 text-center" style="margin: 0 !important; padding: 0 !important;">
											<h1>
												<i class="ace-icon fa fa-leaf" style="color: #1c7430"></i>
												<span class="red" style="color: #b02a37">DEV</span>
												<span class="white" id="id-text2">NGUYEN</span>
											</h1>
<%--											<h4 class="blue" id="id-company-text">© Company</h4>--%>
											<div>
												<img src="https://icpc.ptit.edu.vn/2020/images/logo_ptit.png" alt="Logo">
											</div>
											<form action="j_spring_security_check" id="formLogin" method="post">
												<div class="form-outline form-white mb-4">
													<label>Tài khoản</label>
													<input type="text" class="form-control" id="userName" name="j_username" placeholder="Tên đăng nhập">
												</div>

												<div class="form-outline form-white mb-4">
													<label>Mật khẩu</label>
													<input type="password" class="form-control" id="password" name="j_password" placeholder="Mật khẩu">
												</div>

												<div class="form-check d-flex justify-content-center mb-5">
													<div><input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" /></div>
													<div><label class="form-check-label">
														Ghi nhớ
													</label></div>
												</div>

												<p class="small mb-2 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

												<button type="submit" class="btn" style="color:#F0F7FC;background-color: #bb2019" >Đăng nhập</button>
											</form>

											<div class="d-flex justify-content-center text-center mt-2 pt-1">
												<a href="#!" class="login-extension text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
												<a href="#!" class="login-extension text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
												<a href="#!" class="login-extension text-white"><i class="fab fa-google fa-lg"></i></a>
											</div>
										</div>
<%--										<div class="text-center">--%>
<%--											<p class="mb-0 tex-center account">Don't have an account? <a href="#!" class="text-dark-50 fw-bold">Sign Up</a></p>--%>
<%--										</div>--%>

									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
</body>
</html>