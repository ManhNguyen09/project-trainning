<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
</head>

<body>
<div class="page-wrapper">
    <%--<header>--%>
        <%--<!-- MENU  -->--%>
        <%--<div class="p-4">--%>
            <%--<div class="row navbar">--%>
                <%--<div class="col-12 col-md-3">--%>
                    <%--<div class="logo">--%>
                        <%--<a href="/trang-chu">--%>
                            <%--<img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"--%>
                                 <%--alt="">--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-12 col-md-6">--%>
                    <%--<div class="item-menu">--%>
                        <%--<div class="nav nav1">--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href="/trang-chu"><span>Trang--%>
                                            <%--chủ</span></a></div>--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href="/gioi-thieu"><span>Giới--%>
                                            <%--thiệu</span></a></div>--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href=""><span--%>
                                    <%--style="color: var(--primary-color);">Sản phẩm</span></a></div>--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href="/tin-tuc"><span>Tin--%>
                                            <%--tức</span></a>--%>
                            <%--</div>--%>
                            <%--<div class="nav-item p-2"><a href='<c:url value='/lien-he'/>'><span>Liên hệ--%>
                                    <%--</span></a>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-12 col-md-3">--%>
                    <%--<button class="btn btn-primary px-4">--%>
                        <%--Liên hệ tư vấn--%>
                    <%--</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</header>--%>
    <!-- INTRO  -->
    <div class="intro text-center">
        <div class="title-page">Tất cả dự án</div>
        <div class="row">
            <div class="col-xs-12 a-left">
                <ul class="desc-intro">
                    <li class="home">
                        <a href="./ViewHome.html"><span style="color:#fff">Trang chủ</span></a>
                        <span class="mx-1" style="color:#fff"> / </span>
                    </li>
                    <li class="intro-item"><span>Tất cả sản phẩm</span></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- SEARCH  -->
    <div class="search">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Chọn tỉnh/thành phố</p>
                    <select class="search-option" name="search-option" id="search-option">
                        <option value>- Tỉnh/thành phố</option>
                        <option value="">TP.Đà Nẵng</option>
                        <option value="">TP.Hồ Chí Minh</option>
                        <option value="">TP.Hà Nội</option>
                        <option value="">TP.Cần Thơ</option>
                    </select>
                </div>
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Chọn quận/huyện</p>
                    <select class="search-option" name="search-option" id="search-option">
                        <option value>- Quận/huyện</option>
                    </select>
                </div>

                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Chọn loại bất động sản</p>
                    <select class="search-option" name="search-option" id="search-option">
                        <option value>- Loại bất động sản</option>
                    </select>
                </div>
                <div class="col-12 col-md-3 search-btn">
                    <button class="search-btn-text pb-0">
                        <i class="fa-solid fa-magnifying-glass search-btn-icon"></i>
                        <span>Tìm kiếm nhanh</span>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- CONTENT  -->
    <div class="product mt-5">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4 mb-3">
                    <div class="product1 vip">
                        <div class="product1-image new"></div>

                        <div class="product1-conntent">
                            <div class="product1-conntent-header">
                                <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                            </div>
                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                            <ul class="product1-conntent-list">
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-location-dot"></i>
                                    <span>Số 03 Tôn Thất thuyết</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-building"></i>
                                    <span>Loại BĐS: Chung cư</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-earth-asia"></i>
                                    <span>Diện tích: 78m2 - 146m2</span>
                                </li>
                            </ul>
                        </div>
                        <div class="product1-footer">
                            <span class="product1-footer-cost">2,5 Tỷ</span>
                            <button class="product1-footer-detail"><a href="./ChiTiet.html" style="color:#fff">Xem
                                chi
                                tiết</a></button>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="product1 vip">
                        <div class="product1-image new"></div>

                        <div class="product1-conntent">
                            <div class="product1-conntent-header">
                                <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                            </div>
                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                            <ul class="product1-conntent-list">
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-location-dot" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="location-dot" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M215.7 499.2C267 435 384 279.4 384 192C384 86 298 0 192 0S0 86 0 192c0 87.4 117 243 168.3 307.2c12.3 15.3 35.1 15.3 47.4 0zM192 256c-35.3 0-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64s-28.7 64-64 64z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-location-dot"></i> Font Awesome fontawesome.com -->
                                    <span>Số 03 Tôn Thất thuyết</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-building" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="building" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M48 0C21.5 0 0 21.5 0 48V464c0 26.5 21.5 48 48 48h96V432c0-26.5 21.5-48 48-48s48 21.5 48 48v80h96c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48H48zM64 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V240zm112-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V240zM80 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V112zM272 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-building"></i> Font Awesome fontawesome.com -->
                                    <span>Loại BĐS: Chung cư</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-earth-asia" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="earth-asia" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M51.7 295.1l31.7 6.3c7.9 1.6 16-.9 21.7-6.6l15.4-15.4c11.6-11.6 31.1-8.4 38.4 6.2l9.3 18.5c4.8 9.6 14.6 15.7 25.4 15.7c15.2 0 26.1-14.6 21.7-29.2l-6-19.9c-4.6-15.4 6.9-30.9 23-30.9h2.3c13.4 0 25.9-6.7 33.3-17.8l10.7-16.1c5.6-8.5 5.3-19.6-.8-27.7l-16.1-21.5c-10.3-13.7-3.3-33.5 13.4-37.7l17-4.3c7.5-1.9 13.6-7.2 16.5-14.4l16.4-40.9C303.4 52.1 280.2 48 256 48C141.1 48 48 141.1 48 256c0 13.4 1.3 26.5 3.7 39.1zm407.7 4.6c-3-.3-6-.1-9 .8l-15.8 4.4c-6.7 1.9-13.8-.9-17.5-6.7l-2-3.1c-6-9.4-16.4-15.1-27.6-15.1s-21.6 5.7-27.6 15.1l-6.1 9.5c-1.4 2.2-3.4 4.1-5.7 5.3L312 330.1c-18.1 10.1-25.5 32.4-17 51.3l5.5 12.4c8.6 19.2 30.7 28.5 50.5 21.1l2.6-1c10-3.7 21.3-2.2 29.9 4.1l1.5 1.1c37.2-29.5 64.1-71.4 74.4-119.5zM512 256c0 141.4-114.6 256-256 256S0 397.4 0 256S114.6 0 256 0S512 114.6 512 256zM144.5 348.1c-2.1 8.6 3.1 17.3 11.6 19.4l32 8c8.6 2.1 17.3-3.1 19.4-11.6s-3.1-17.3-11.6-19.4l-32-8c-8.6-2.1-17.3 3.1-19.4 11.6zm92-20c-2.1 8.6 3.1 17.3 11.6 19.4s17.3-3.1 19.4-11.6l8-32c2.1-8.6-3.1-17.3-11.6-19.4s-17.3 3.1-19.4 11.6l-8 32zM343.2 113.7c-7.9-4-17.5-.7-21.5 7.2l-16 32c-4 7.9-.7 17.5 7.2 21.5s17.5 .7 21.5-7.2l16-32c4-7.9 .7-17.5-7.2-21.5z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-earth-asia"></i> Font Awesome fontawesome.com -->
                                    <span>Diện tích: 78m2 - 146m2</span>
                                </li>
                            </ul>
                        </div>
                        <div class="product1-footer">
                            <span class="product1-footer-cost">2,5 Tỷ</span>
                            <button class="product1-footer-detail"><a href="./ChiTiet.html" style="color:#fff">Xem
                                chi
                                tiết</a></button>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="product1 vip">
                        <div class="product1-image new"></div>
                        <div class="product1-conntent">
                            <div class="product1-conntent-header">
                                <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                            </div>
                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                            <ul class="product1-conntent-list">
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-location-dot" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="location-dot" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M215.7 499.2C267 435 384 279.4 384 192C384 86 298 0 192 0S0 86 0 192c0 87.4 117 243 168.3 307.2c12.3 15.3 35.1 15.3 47.4 0zM192 256c-35.3 0-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64s-28.7 64-64 64z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-location-dot"></i> Font Awesome fontawesome.com -->
                                    <span>Số 03 Tôn Thất thuyết</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-building" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="building" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M48 0C21.5 0 0 21.5 0 48V464c0 26.5 21.5 48 48 48h96V432c0-26.5 21.5-48 48-48s48 21.5 48 48v80h96c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48H48zM64 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V240zm112-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V240zM80 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V112zM272 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-building"></i> Font Awesome fontawesome.com -->
                                    <span>Loại BĐS: Chung cư</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-earth-asia" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="earth-asia" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M51.7 295.1l31.7 6.3c7.9 1.6 16-.9 21.7-6.6l15.4-15.4c11.6-11.6 31.1-8.4 38.4 6.2l9.3 18.5c4.8 9.6 14.6 15.7 25.4 15.7c15.2 0 26.1-14.6 21.7-29.2l-6-19.9c-4.6-15.4 6.9-30.9 23-30.9h2.3c13.4 0 25.9-6.7 33.3-17.8l10.7-16.1c5.6-8.5 5.3-19.6-.8-27.7l-16.1-21.5c-10.3-13.7-3.3-33.5 13.4-37.7l17-4.3c7.5-1.9 13.6-7.2 16.5-14.4l16.4-40.9C303.4 52.1 280.2 48 256 48C141.1 48 48 141.1 48 256c0 13.4 1.3 26.5 3.7 39.1zm407.7 4.6c-3-.3-6-.1-9 .8l-15.8 4.4c-6.7 1.9-13.8-.9-17.5-6.7l-2-3.1c-6-9.4-16.4-15.1-27.6-15.1s-21.6 5.7-27.6 15.1l-6.1 9.5c-1.4 2.2-3.4 4.1-5.7 5.3L312 330.1c-18.1 10.1-25.5 32.4-17 51.3l5.5 12.4c8.6 19.2 30.7 28.5 50.5 21.1l2.6-1c10-3.7 21.3-2.2 29.9 4.1l1.5 1.1c37.2-29.5 64.1-71.4 74.4-119.5zM512 256c0 141.4-114.6 256-256 256S0 397.4 0 256S114.6 0 256 0S512 114.6 512 256zM144.5 348.1c-2.1 8.6 3.1 17.3 11.6 19.4l32 8c8.6 2.1 17.3-3.1 19.4-11.6s-3.1-17.3-11.6-19.4l-32-8c-8.6-2.1-17.3 3.1-19.4 11.6zm92-20c-2.1 8.6 3.1 17.3 11.6 19.4s17.3-3.1 19.4-11.6l8-32c2.1-8.6-3.1-17.3-11.6-19.4s-17.3 3.1-19.4 11.6l-8 32zM343.2 113.7c-7.9-4-17.5-.7-21.5 7.2l-16 32c-4 7.9-.7 17.5 7.2 21.5s17.5 .7 21.5-7.2l16-32c4-7.9 .7-17.5-7.2-21.5z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-earth-asia"></i> Font Awesome fontawesome.com -->
                                    <span>Diện tích: 78m2 - 146m2</span>
                                </li>
                            </ul>
                        </div>
                        <div class="product1-footer">
                            <span class="product1-footer-cost">2,5 Tỷ</span>
                            <button class="product1-footer-detail"><a href="./ChiTiet.html" style="color:#fff">Xem
                                chi
                                tiết</a></button>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="product1 vip">
                        <div class="product1-image new"></div>

                        <div class="product1-conntent">
                            <div class="product1-conntent-header">
                                <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                            </div>
                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                            <ul class="product1-conntent-list">
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-location-dot" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="location-dot" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M215.7 499.2C267 435 384 279.4 384 192C384 86 298 0 192 0S0 86 0 192c0 87.4 117 243 168.3 307.2c12.3 15.3 35.1 15.3 47.4 0zM192 256c-35.3 0-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64s-28.7 64-64 64z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-location-dot"></i> Font Awesome fontawesome.com -->
                                    <span>Số 03 Tôn Thất thuyết</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-building" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="building" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M48 0C21.5 0 0 21.5 0 48V464c0 26.5 21.5 48 48 48h96V432c0-26.5 21.5-48 48-48s48 21.5 48 48v80h96c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48H48zM64 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V240zm112-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V240zM80 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V112zM272 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-building"></i> Font Awesome fontawesome.com -->
                                    <span>Loại BĐS: Chung cư</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-earth-asia" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="earth-asia" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M51.7 295.1l31.7 6.3c7.9 1.6 16-.9 21.7-6.6l15.4-15.4c11.6-11.6 31.1-8.4 38.4 6.2l9.3 18.5c4.8 9.6 14.6 15.7 25.4 15.7c15.2 0 26.1-14.6 21.7-29.2l-6-19.9c-4.6-15.4 6.9-30.9 23-30.9h2.3c13.4 0 25.9-6.7 33.3-17.8l10.7-16.1c5.6-8.5 5.3-19.6-.8-27.7l-16.1-21.5c-10.3-13.7-3.3-33.5 13.4-37.7l17-4.3c7.5-1.9 13.6-7.2 16.5-14.4l16.4-40.9C303.4 52.1 280.2 48 256 48C141.1 48 48 141.1 48 256c0 13.4 1.3 26.5 3.7 39.1zm407.7 4.6c-3-.3-6-.1-9 .8l-15.8 4.4c-6.7 1.9-13.8-.9-17.5-6.7l-2-3.1c-6-9.4-16.4-15.1-27.6-15.1s-21.6 5.7-27.6 15.1l-6.1 9.5c-1.4 2.2-3.4 4.1-5.7 5.3L312 330.1c-18.1 10.1-25.5 32.4-17 51.3l5.5 12.4c8.6 19.2 30.7 28.5 50.5 21.1l2.6-1c10-3.7 21.3-2.2 29.9 4.1l1.5 1.1c37.2-29.5 64.1-71.4 74.4-119.5zM512 256c0 141.4-114.6 256-256 256S0 397.4 0 256S114.6 0 256 0S512 114.6 512 256zM144.5 348.1c-2.1 8.6 3.1 17.3 11.6 19.4l32 8c8.6 2.1 17.3-3.1 19.4-11.6s-3.1-17.3-11.6-19.4l-32-8c-8.6-2.1-17.3 3.1-19.4 11.6zm92-20c-2.1 8.6 3.1 17.3 11.6 19.4s17.3-3.1 19.4-11.6l8-32c2.1-8.6-3.1-17.3-11.6-19.4s-17.3 3.1-19.4 11.6l-8 32zM343.2 113.7c-7.9-4-17.5-.7-21.5 7.2l-16 32c-4 7.9-.7 17.5 7.2 21.5s17.5 .7 21.5-7.2l16-32c4-7.9 .7-17.5-7.2-21.5z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-earth-asia"></i> Font Awesome fontawesome.com -->
                                    <span>Diện tích: 78m2 - 146m2</span>
                                </li>
                            </ul>
                        </div>
                        <div class="product1-footer">
                            <span class="product1-footer-cost">2,5 Tỷ</span>
                            <button class="product1-footer-detail"><a href="./ChiTiet.html" style="color:#fff">Xem
                                chi
                                tiết</a></button>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="product1 vip">
                        <div class="product1-image new"></div>

                        <div class="product1-conntent">
                            <div class="product1-conntent-header">
                                <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                            </div>
                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                            <ul class="product1-conntent-list">
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-location-dot" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="location-dot" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M215.7 499.2C267 435 384 279.4 384 192C384 86 298 0 192 0S0 86 0 192c0 87.4 117 243 168.3 307.2c12.3 15.3 35.1 15.3 47.4 0zM192 256c-35.3 0-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64s-28.7 64-64 64z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-location-dot"></i> Font Awesome fontawesome.com -->
                                    <span>Số 03 Tôn Thất thuyết</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-building" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="building" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M48 0C21.5 0 0 21.5 0 48V464c0 26.5 21.5 48 48 48h96V432c0-26.5 21.5-48 48-48s48 21.5 48 48v80h96c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48H48zM64 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V240zm112-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V240zM80 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V112zM272 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-building"></i> Font Awesome fontawesome.com -->
                                    <span>Loại BĐS: Chung cư</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-earth-asia" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="earth-asia" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M51.7 295.1l31.7 6.3c7.9 1.6 16-.9 21.7-6.6l15.4-15.4c11.6-11.6 31.1-8.4 38.4 6.2l9.3 18.5c4.8 9.6 14.6 15.7 25.4 15.7c15.2 0 26.1-14.6 21.7-29.2l-6-19.9c-4.6-15.4 6.9-30.9 23-30.9h2.3c13.4 0 25.9-6.7 33.3-17.8l10.7-16.1c5.6-8.5 5.3-19.6-.8-27.7l-16.1-21.5c-10.3-13.7-3.3-33.5 13.4-37.7l17-4.3c7.5-1.9 13.6-7.2 16.5-14.4l16.4-40.9C303.4 52.1 280.2 48 256 48C141.1 48 48 141.1 48 256c0 13.4 1.3 26.5 3.7 39.1zm407.7 4.6c-3-.3-6-.1-9 .8l-15.8 4.4c-6.7 1.9-13.8-.9-17.5-6.7l-2-3.1c-6-9.4-16.4-15.1-27.6-15.1s-21.6 5.7-27.6 15.1l-6.1 9.5c-1.4 2.2-3.4 4.1-5.7 5.3L312 330.1c-18.1 10.1-25.5 32.4-17 51.3l5.5 12.4c8.6 19.2 30.7 28.5 50.5 21.1l2.6-1c10-3.7 21.3-2.2 29.9 4.1l1.5 1.1c37.2-29.5 64.1-71.4 74.4-119.5zM512 256c0 141.4-114.6 256-256 256S0 397.4 0 256S114.6 0 256 0S512 114.6 512 256zM144.5 348.1c-2.1 8.6 3.1 17.3 11.6 19.4l32 8c8.6 2.1 17.3-3.1 19.4-11.6s-3.1-17.3-11.6-19.4l-32-8c-8.6-2.1-17.3 3.1-19.4 11.6zm92-20c-2.1 8.6 3.1 17.3 11.6 19.4s17.3-3.1 19.4-11.6l8-32c2.1-8.6-3.1-17.3-11.6-19.4s-17.3 3.1-19.4 11.6l-8 32zM343.2 113.7c-7.9-4-17.5-.7-21.5 7.2l-16 32c-4 7.9-.7 17.5 7.2 21.5s17.5 .7 21.5-7.2l16-32c4-7.9 .7-17.5-7.2-21.5z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-earth-asia"></i> Font Awesome fontawesome.com -->
                                    <span>Diện tích: 78m2 - 146m2</span>
                                </li>
                            </ul>
                        </div>
                        <div class="product1-footer">
                            <span class="product1-footer-cost">2,5 Tỷ</span>
                            <button class="product1-footer-detail"><a href="./ChiTiet.html" style="color:#fff">Xem
                                chi
                                tiết</a></button>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="product1 vip">
                        <div class="product1-image new"></div>

                        <div class="product1-conntent">
                            <div class="product1-conntent-header">
                                <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                            </div>
                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                            <ul class="product1-conntent-list">
                                <li class="product1-conntent-item">
                                 <i class="fa-solid fa-location-dot"></i>
                                    <span>Số 03 Tôn Thất thuyết</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-building" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="building" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M48 0C21.5 0 0 21.5 0 48V464c0 26.5 21.5 48 48 48h96V432c0-26.5 21.5-48 48-48s48 21.5 48 48v80h96c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48H48zM64 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V240zm112-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V240zM80 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V112zM272 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-building"></i> Font Awesome fontawesome.com -->
                                    <span>Loại BĐS: Chung cư</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <svg class="svg-inline--fa fa-earth-asia" aria-hidden="true" focusable="false"
                                         data-prefix="fas" data-icon="earth-asia" role="img"
                                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                        <path fill="currentColor"
                                              d="M51.7 295.1l31.7 6.3c7.9 1.6 16-.9 21.7-6.6l15.4-15.4c11.6-11.6 31.1-8.4 38.4 6.2l9.3 18.5c4.8 9.6 14.6 15.7 25.4 15.7c15.2 0 26.1-14.6 21.7-29.2l-6-19.9c-4.6-15.4 6.9-30.9 23-30.9h2.3c13.4 0 25.9-6.7 33.3-17.8l10.7-16.1c5.6-8.5 5.3-19.6-.8-27.7l-16.1-21.5c-10.3-13.7-3.3-33.5 13.4-37.7l17-4.3c7.5-1.9 13.6-7.2 16.5-14.4l16.4-40.9C303.4 52.1 280.2 48 256 48C141.1 48 48 141.1 48 256c0 13.4 1.3 26.5 3.7 39.1zm407.7 4.6c-3-.3-6-.1-9 .8l-15.8 4.4c-6.7 1.9-13.8-.9-17.5-6.7l-2-3.1c-6-9.4-16.4-15.1-27.6-15.1s-21.6 5.7-27.6 15.1l-6.1 9.5c-1.4 2.2-3.4 4.1-5.7 5.3L312 330.1c-18.1 10.1-25.5 32.4-17 51.3l5.5 12.4c8.6 19.2 30.7 28.5 50.5 21.1l2.6-1c10-3.7 21.3-2.2 29.9 4.1l1.5 1.1c37.2-29.5 64.1-71.4 74.4-119.5zM512 256c0 141.4-114.6 256-256 256S0 397.4 0 256S114.6 0 256 0S512 114.6 512 256zM144.5 348.1c-2.1 8.6 3.1 17.3 11.6 19.4l32 8c8.6 2.1 17.3-3.1 19.4-11.6s-3.1-17.3-11.6-19.4l-32-8c-8.6-2.1-17.3 3.1-19.4 11.6zm92-20c-2.1 8.6 3.1 17.3 11.6 19.4s17.3-3.1 19.4-11.6l8-32c2.1-8.6-3.1-17.3-11.6-19.4s-17.3 3.1-19.4 11.6l-8 32zM343.2 113.7c-7.9-4-17.5-.7-21.5 7.2l-16 32c-4 7.9-.7 17.5 7.2 21.5s17.5 .7 21.5-7.2l16-32c4-7.9 .7-17.5-7.2-21.5z">
                                        </path>
                                    </svg><!-- <i class="fa-solid fa-earth-asia"></i> Font Awesome fontawesome.com -->
                                    <span>Diện tích: 78m2 - 146m2</span>
                                </li>
                            </ul>
                        </div>
                        <div class="product1-footer">
                            <span class="product1-footer-cost">2,5 Tỷ</span>
                            <button class="product1-footer-detail"><a href="./ChiTiet.html" style="color:#fff">Xem
                                chi
                                tiết</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- TIEN TRINH  -->
        <div class="container text-center">
            <div class="shop-pag text-xs-right mt-5">
                <nav class="text-center">
                    <ul class="pagination clearfix justify-content-center">
                        <li class="page-item disabled"><a class="page-link" href="#">«</a></li>
                        <li class="active page-item disabled"><a class="page-link" href="javascript:;">1</a></li>
                        <li class="page-item"><a class="page-link" onclick="doSearch(2)" href="javascript:;">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" onclick="doSearch(2)" href="javascript:;">»</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <!-- FOOTER  -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="top-footer text-center mt-0">
                    <div class="logo logo-footer pt-5">
                        <img src="https://icpc.ptit.edu.vn/2020/images/logo_ptit.png" alt="Logo">
                        <p class="desc-logo-footer mt-3"></p>
                        <div class="item-footer mt-5">
                            <div class="row">
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <%--                                    <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_maps.png?1676257083798" alt="">--%>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 26 26">
                                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                                        </svg>
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="text-primary mb-3 " style="color: #b02a37">ĐỊA CHỈ HỌC VIỆN:</p>
                                        <p class="hover-title-header">122 Hoàng Quốc Việt, Q. Cầu Giấy, Hà Nội</p>
                                        <p class="hover-title-header">Km10, Đường Nguyễn Trãi, Q. Hà Đông, Hà Nội</p>
                                        <p class="hover-title-header">11 Nguyễn Đình Chiểu, P. Đa Kao, Q.1 TP Hồ Chí Minh</p>
                                        <p class="hover-title-header">Đường Man Thiện, P. Hiệp Phú, Q.9 TP Hồ Chí Minh</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-forward-fill" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.68.68 0 0 0 .178.643l2.457 2.457a.68.68 0 0 0 .644.178l2.189-.547a1.75 1.75 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.6 18.6 0 0 1-7.01-4.42 18.6 18.6 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877zm10.761.135a.5.5 0 0 1 .708 0l2.5 2.5a.5.5 0 0 1 0 .708l-2.5 2.5a.5.5 0 0 1-.708-.708L14.293 4H9.5a.5.5 0 0 1 0-1h4.793l-1.647-1.646a.5.5 0 0 1 0-.708"/>
                                        </svg>
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="text-primary mb-3 " style="color: #b02a37">THÔNG TIN LIÊN HỆ:</p>
                                        <div>
                                            <h6 class="hover-title-header">Số điện thoại</h6>
                                            <p class="desc-footer">(024) 33528122</p>
                                        </div>
                                        <div>
                                            <h6 class="hover-title-header">Email</h6>
                                            <p class="desc-footer">tuyensinh@ptit.edu.vn</p>
                                        </div>
                                        <div>
                                            <h6 class="hover-title-header">Địa chỉ</h6>
                                            <p class="desc-footer">Phòng Đào tạo - Học viện CN BCVT</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle-fill" viewBox="0 0 16 16">
                                            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16m.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2"/>
                                        </svg>
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="text-primary mb-3 " style="color: #b02a37">VỀ CHÚNG TÔI:</p>
                                        <div>
                                            <h6 class="hover-title-header">Trang chủ</h6>
                                            <h6 class="hover-title-header">Giới thiệu</h6>
                                            <h6 class="hover-title-header">Thông báo</h6>
                                            <h6 class="hover-title-header">Đề án tuyển sinh</h6>
                                            <h6 class="hover-title-header">Tra cứu tuyển sinh</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div class="border-bottom mb-5 mt-4"></div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>