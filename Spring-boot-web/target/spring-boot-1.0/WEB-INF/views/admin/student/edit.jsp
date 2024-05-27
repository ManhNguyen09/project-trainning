<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
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

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="/admin/home"/>
                        <%--<spring:message code="label.home"/>--%>
                        Trang chủ
                    </a>
                </li>
                <li class="active">
                    <%--<spring:message code="label.user.list"/>--%>
                    Thông tin sinh viên
                </li>
            </ul>
            <!-- /.breadcrumb -->
        </div>

        <div class="page-content">
            <div class="page-header">
                <h1>Thông tin sinh viên
                </h1>
            </div><!-- /.page-header -->

            <div class="row" style="font-family: 'Times New Roman', Times, serif;">
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
                                    <form:input path="ngaySinh" type="date" class="form-control" min="2018-01-01" max="2025-12-31"/>
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
                                    <form:select class="form-control" path="lop">
                                        <form:option value="">---Chọn lớp---</form:option>
                                        <form:options items = "${className}"></form:options>
                                    </form:select>
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
                                    <form:select path="userName" class="form-control">
                                        <form:option value="" label="---Chọn tài khoản---"></form:option>
                                        <form:options items="${listUser}"/>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Hình đại diện</label>
                                <input class="col-xs-3 no-padding-right" type="file" id="uploadImage"/>
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
                            <div class="form-group">
                                <label class="col-xs-3"></label>
                                <div class="col-xs-9">
                                    <c:if test="${empty studentEdit.id}">
                                        <button type="button" class="btn btn-primary" id="btnAddOrUpdateStudent">
                                            Thêm sinh viên
                                        </button>
                                    </c:if>
                                    <c:if test="${not empty studentEdit.id}">
                                        <button type="button" class="btn btn-warning" id="btnAddOrUpdateStudent">
                                            Sửa thông tin
                                        </button>
                                    </c:if>
                                    <button class="btn btn-primary">
                                        Hủy thao tác
                                    </button>
                                </div>
                            </div>
                        </form>
                        <form:hidden path="id" id="studentId"/>
                    </div>
                </form:form>
            </div><!-- /.row -->
        </div><!-- /.page-content -->
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
    $('#btnAddOrUpdateStudent').click(function(){
        var data = {};
        var formData = $('#listForm').serializeArray();
        $.each(formData, function(i,it){
                data["" + it.name + ""] = it.value;

            if ('' !== imageBase64) {
                data['imageBase64'] = imageBase64;
                data['imageName'] = imageName;
            }
        });
        $('#loading_image').show();
        if(data['userName'] != data['maSV'])return alert("Mã sinh viên sai với tài khoản!");
        else {
            btnAddOrUpdate(data);
        }
    });
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

    function btnAddOrUpdate(data){
        $.ajax({
            type: "POST",
            url: "/api/students",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "text",
            success:(response) =>{
                alert(response)
                window.location.replace("/admin/student-list")
            },
            error:function(response){
                console.log("failed");
                console.log(response);
            }
        });
    }
</script>
</body>
</html>
