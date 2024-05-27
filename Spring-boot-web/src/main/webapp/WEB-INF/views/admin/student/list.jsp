<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="studentListURL" value="/admin/student-list"/>
<c:url var = "studentAPI" value ="/api/students" />
<html>
<head>
    <title>Danh sách sinh viên</title>
</head>
<body>
    <div class="main-content" id="main-container">
        <script type="text/javascript">
            try{ace.settings.check('main-container' , 'fixed')}catch(e){}
        </script>

        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs" id="breadcrumbs">
                    <script type="text/javascript">
                        try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                    </script>
                </div>

                <div class="page-content">
                    <div class="page-header">
                        <h1>Danh sách học sinh
                        </h1>
                    </div><!-- /.page-header -->

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="widget-box" style="font-family: 'Times New Roman', Times, serif;">
                                <div class="widget-header">
                                    <h4 class="widget-title">Tìm kiếm</h4>

                                    <span class="widget-toolbar">
                                                <a href="/admin/student-list" data-action="reload">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                </a>

                                                <a href="#" data-action="collapse">
                                                    <i class="ace-icon fa fa-chevron-up"></i>
                                                </a>

                                            </span>
                                </div>

                                <div class="widget-body" style="display: block;">
                                    <div class="widget-main" style="font-family: 'Times New Roman', Times, serif;">
                                        <form:form id="listForm" modelAttribute="modelSearch" method="GET" action="/admin/student-list">
                                            <div class="row">
                                                <div class="form-group">
                                                    <div class="col-xs-12">
                                                        <div class="col-xs-6">
                                                            <label>Mã Sinh Viên</label>
<%--                                                            <input type="text" class="form-control">--%>
                                                            <form:input path="mssv" class="form-control"/>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <label>Tên Sinh Viên</label>
                                                            <form:input path="ten" class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-xs-12">
                                                        <div class="col-xs-2">
                                                            <label>Lớp</label>
                                                            <form:select class="form-control" path="lop">
                                                                <form:option value="">---Chọn lớp---</form:option>
                                                                <form:options items = "${className}"></form:options>
                                                            </form:select>
                                                        </div>
                                                        <div class="col-xs-5">
                                                            <label>Ngày sinh</label>
                                                            <form:input path="ngaySinh" type="date" class="form-control" min="2018-01-01" max="2025-12-31"/>
                                                        </div>
                                                        <div class="col-xs-5">
                                                            <label>Địa chỉ</label>
                                                            <form:input path="diaChi" class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-xs-12">
                                                        <div class="col-xs-5">
                                                            <label>GPA từ</label>
                                                            <form:input path="gpaFrom" class="form-control"/>
                                                        </div>
                                                        <div class="col-xs-5">
                                                            <label>GPA đến</label>
                                                            <form:input path="gpaTo" class="form-control"/>
                                                        </div>
                                                        <security:authorize access="hasRole('MANAGER')">
                                                            <div class="col-xs-2">
                                                                <label>Giáo viên phụ trách</label>
                                                                <form:select class="form-control" path="teacherId">
                                                                    <form:option value="">---Chọn giáo viên phụ trách---</form:option>
                                                                    <form:options items = "${listTeacher}"></form:options>
                                                                </form:select>
                                                            </div>
                                                        </security:authorize>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-xs-12">
                                                        <div class="col-xs-6">
                                                            <button class="btn btn-sm btn-primary" id="btnSearchStudent">
                                                                <i class="ace-icon glyphicon glyphicon-search"></i>
                                                                Tìm kiếm
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>

                            </div>
                            <security:authorize access="hasRole('MANAGER')">
                                <div class="pull-right">
                                    <a href="/admin/student-edit">
                                        <button title="Thêm sinh viên" class="btn btn-app btn-primary">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-add" viewBox="0 0 16 16">
                                                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                                                <path d="M2 13c0 1 1 1 1 1h5.256A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1 1.544-3.393Q8.844 9.002 8 9c-5 0-6 3-6 4"/>
                                            </svg>
                                        </button>
                                    </a>
                                    <button title="Giao sinh viên" class="btn btn-app" onclick="assignmentStudent()">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
                                            <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5m.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1z"/>
                                        </svg>
                                    </button>
                                    <button title="Xóa sinh viên" class="btn btn-app btn-danger" id="btnDeleteStudent">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-dash" viewBox="0 0 16 16">
                                            <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1m0-7a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                                            <path d="M2 13c0 1 1 1 1 1h5.256A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1 1.544-3.393Q8.844 9.002 8 9c-5 0-6 3-6 4"/>
                                        </svg>
                                    </button>
                                </div>
                            </security:authorize>
                        </div>
                    </div><!-- /.row -->

                    <div class="hr hr-18 dotted hr-double"></div>

                    <div class="row" style="font-family: 'Times New Roman', Times, serif;">
                        <div class="col-xs-12">
                            <table id="studentList"  class="table table-striped table-bordered table-hover">
                            <display:table name="listStudent" cellspacing="0" cellpadding="0"
                                           requestURI="${studentListURL}" partialList="true" sort="external"
                                           size="${model.totalItems}" defaultsort="4" defaultorder="ascending"
                                           id="tableList" pagesize="${model.maxPageItems}"
                                           export="false"
                                           class="table table-fcv-ace table-striped table-bordered table-hover dataTable no-footer"
                                           style="margin: 3em 0 1.5em;">
                                <display:column title="<fieldset class='form-group'>
												        <input type='checkbox' id='checkAll' class='check-box-element'>
												        </fieldset>" class="center select-cell"
                                                headerClass="center select-cell">
                                    <fieldset>
                                        <input type="checkbox" name="checkList" value="${tableList.id}"
                                               id="checkbox_${tableList.id}" class="check-box-element"/>
                                    </fieldset>
                                </display:column>
                                <display:column headerClass="text-left" property="maSV" title="Mã sinh viên"/>
                                <display:column headerClass="text-left" property="ten" title="Tên sinh viên"/>
                                <display:column headerClass="text-left" property="ngaySinh" title="Ngày sinh"/>
                                <display:column headerClass="text-left" property="diaChi" title="Địa chỉ"/>
                                <display:column headerClass="text-left" property="lop" title="Lớp"/>
                                <display:column headerClass="text-left" property="gpa" title="Điểm"/>
                                <display:column headerClass="text-left" title="Thao tác">
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <a class="btn btn-xs btn-info" data-toggle="tooltip"
                                           title="Sửa thông tin"
                                           href='<c:url value="/admin/student-edit-${tableList.id}"/>'>
                                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                        </a>
                                        <security:authorize access="hasRole('MANAGER')">
                                            <button class="btn btn-xs btn-danger" data-toggle="tooltip" title="Xóa tòa nhà"
                                                    onclick="deleteStudent(${tableList.id})">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>
                                        </security:authorize>
                                    </div>
                                </display:column>
                            </display:table>
                        </div>
                    </div>
                </div><!-- /.page-content -->
            </div>
        </div><!-- /.main-content -->
    </div><!-- /.main-container -->

    <div class="modal fade" id="assingmentStudentModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Danh sách giáo viên</h4>
                </div>
                <div class="modal-body">
                    <table id="staff-list" class="table table-striped table-bordered table-hover center" style="margin: 1.5em 0 1.5em;">
                        <thead>
                        <tr>
                            <th class="center">
                                Chọn
                            </th>
                            <th class="center">Tên tài khoản</th>
                            <th class="center">Tên giáo viên</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <input type="hidden" id="buildingId" name="buildingId" value=""/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="btnAssingmentStudent">Giao sinh viên</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
                </div>
            </div>

        </div>
    </div>
<script>
    function assignmentStudent() {
        $('#assingmentStudentModal').modal();
        var studentIds = $('#tableList').find('tbody input[type = "checkbox"]:checked').map(function () {
            return $(this).val();
        }).get();
        loadStaff(studentIds[0]);
    }

    function loadStaff(studentId) {
        $.ajax({
            type: "GET",
            url: "/api/students/" + studentId + "/staffs" ,
            // data: JSON.stringify(data),
            contentType: "application/json",
            dataType: 'json',
            success: function(response){
                let row = "";
                $.each(response.data, function (index, item){
                    row += '<tr>';
                    row += '<td class="text-center"><input type="checkbox" id="checkbox_ + ' + item.staffId + '"  value= "' + item.staffId + '" class="check-box-element" '+ item.checked + ' /></td>';
                    row += '<td class="text-center">' + item.userName + '</td>';
                    row += '<td class="text-center">' + item.fullName + '</td>';
                    row += '</tr>'
                });
                $('#staff-list tbody').html(row);
                console.info("success");
            },
            error: function(respond) {
                console.log("failed");
                alert("Có lỗi khi load danh sách");
                window.location.href = "<c:url value="/admin/student-list?message=false"/>";
            }
        });
    }

    $('#btnAssingmentStudent').click((e) => {
        e.preventDefault();
        let data = {};
        var studentIds = $('#tableList').find('tbody input[type = "checkbox"]:checked').map(function () {
            return $(this).val();
        }).get();
        let staffs = $('#staff-list').find('tbody input[type = checkbox]:checked').map(function() {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        data['id'] = studentIds;
        addAssignment(data);
    });

    function addAssignment(data) {
        $.ajax({
            type: "POST",
            url: "/api/students/staffs",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            success: function(response){
                alert("Bạn đã cập nhật thành công");
            },
            error: function(respond) {
                console.log("failed");
                alert("Bạn đã cập nhật thất bại");
                console.log(respond);
            }
        });
    }

    $('#btnSearchStudent').click(function (e) {
        e.preventDefault();
        $('#listForm').submit();
    })

    function deleteStudent(id)
    {
        var buildingId = [id];
        deleteStudents(buildingId);
    }

    $('#btnDeleteStudent').click(function (e) {
        e.preventDefault();
        var data = {};
        var buildingIds = $('#tableList').find('tbody input[type = "checkbox"]:checked').map(function () {
            return $(this).val();
        }).get();
        deleteStudents(buildingIds);
    })


    function deleteStudents(data)
    {
        $.ajax({
            type: "DELETE",
            url: "${studentAPI}/" + data,
            data: JSON.stringify(data),
            contentType: "application/json",
            // dataType: "JSON",
            success: function () {
                alert("Xóa thành công");
                window.location.replace("/admin/student-list")
            },

            error: function () {
                console.log("failed");
                console.log(respond);
            }

        })
    }
</script>
</body>
</html>
