<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<html>
<head>
    <title>Thông tin sinh viên</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>
        </div>

        <div class="page-content">
            <div class="page-header" style="color: #b02a37; margin-left: 360px">
                <h3>Thông tin sinh viên <%=SecurityUtils.getPrincipal().getFullName()%>
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-emoji-smile-fill" viewBox="0 0 16 16">
                        <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16M7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5M4.285 9.567a.5.5 0 0 1 .683.183A3.5 3.5 0 0 0 8 11.5a3.5 3.5 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683M10 8c-.552 0-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5S10.552 8 10 8"/>
                    </svg>
                </h3>
            </div><!-- /.page-header -->

            <div class="row" style="font-family: 'Times New Roman', Times, serif; font-style: oblique; margin-left: 300px; padding: 70px" >
                <form:form id="listForm" method="get" modelAttribute="studentEdit">
                    <div class="col-xs-12">
                        <form class="form-horizontal" id="form-edit">
                            <div class="form-group">
                                <label class="col-xs-3">Mã sinh viên</label>
                                <div class="col-xs-4">
                                        <%--                                    <input class="form-control" type="text" name="name">--%>
                                    <form:input path="maSV" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3" >Tên sinh viên</label>
                                <div class="col-xs-4">
                                    <form:input path="ten" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Ngày sinh</label>
                                <div class="col-xs-4">
                                    <form:input path="ngaySinh" type="date" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Địa chỉ</label>
                                <div class="col-xs-4">
                                    <form:input path="diaChi" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Lớp</label>
                                <div class="col-xs-4">
                                    <form:input path="lop" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3" >GPA</label>
                                <div class="col-xs-4">
                                    <form:input path="gpa" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3" >Tên tài khoản</label>
                                <div class="col-xs-4">
                                    <form:input path="userName" class="form-control"/>
                                </div>
                            </div>
                            <div style="margin-left: 300px">
                                <label class="col-xs-3" style="margin-left: 100px">Hình đại diện</label>
<%--                                <input class="col-xs-3 no-padding-right" type="file" id="uploadImage"/>--%>
                                <div class="col-xs-9">
                                    <c:if test="${not empty studentEdit.image}">
                                        <c:set var="imagePath" value="/repository${studentEdit.image}"/>
                                        <img src="${imagePath}" id="viewImage" width="300px" height="300px" style="margin-top: 50px">
                                    </c:if>
                                    <c:if test="${empty studentEdit.image}">
                                        <img src="/admin/image/default.png" id="viewImage" width="300px" height="300px">
                                    </c:if>
                                </div>
                            </div>
                        </form>
                        <form:hidden path="id" id="studentId"/>
                    </div>
                </form:form>
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
    <div class="bg-image--right">
        <img src="https://icpc.ptit.edu.vn/2020/images/bg_right.png" alt="">
    </div>
</div><!-- /.main-content -->
<script>
    var imageBase64 = '';
    var imageName = '';

    function openImage(input, imageView) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#' +imageView).attr('src', reader.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $('#uploadImage').change(function (event) {
        var reader = new FileReader();
        var file = $(this)[0].files[0];
        reader.onload = function(e){
            imageBase64 = e.target.result;
            imageName = file.name; // ten hinh khong dau, khoang cach. Dat theo format sau: a-b-c
        };
        reader.readAsDataURL(file);
        openImage(this, "viewImage");
    });
</script>
</body>
</html>
