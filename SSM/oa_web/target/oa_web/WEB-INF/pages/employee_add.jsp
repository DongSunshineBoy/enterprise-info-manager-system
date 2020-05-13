<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加专家 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="${pageContext.request.contextPath}/employee/add" modelAttribute="employee"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <form:input path="emp_id" class="form-control" id="emp_id" name="emp_id" placeholder="工号" required="true" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                            <form:password path="emp_pwd" class="form-control" name="emp_pwd" placeholder="密码" required="true" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                        <form:input path="emp_name" class="form-control" name="emp_name" placeholder="姓名" required="true" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                        <form:input path="emp_phone" class="form-control" name="emp_phone" placeholder="手机号码" required="true" />
                                </div>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="dep_id" class="field select">
                                    <form:select path="dep_id" items="${dlist}" itemLabel="name" itemValue="sn" cssClass="gui-input" placeholder="所属学科..."/>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="emp_position" class="field select">
                                    <form:select path="emp_position" items="${plist}" cssClass="gui-input" placeholder="职务..."/>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 保存 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>