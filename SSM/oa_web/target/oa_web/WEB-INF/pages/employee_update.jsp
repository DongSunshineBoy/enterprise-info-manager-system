<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 编辑员工信息 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="${pageContext.request.contextPath}/employee/update" modelAttribute="employee"  id="admin-form" name="addForm">
                    <form:hidden path="emp_pwd"/>
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="emp_id" class="field prepend-icon">
                                    <form:input path="emp_id" cssClass="gui-input" placeholder="工号..." readonly="true" />
                                    <label for="emp_id" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="emp_name" class="field prepend-icon">
                                    <form:input path="emp_name" class="gui-input" placeholder="姓名..."/>
                                    <label for="emp_name" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="dep_id" class="field select">
                                    <form:select path="dep_id" items="${dlist}" itemLabel="name" itemValue="sn" cssClass="gui-input" placeholder="所属部门..."/>
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