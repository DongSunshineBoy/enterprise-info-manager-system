<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加学科类 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="${pageContext.request.contextPath}/department/add" modelAttribute="department"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <form:input path="sn" name="sn" cssClass="gui-input" placeholder="编号..."/>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="name" class="field prepend-icon">
                                        <form:select path="name" cssClass="gui-input" placeholder="名称... " items="${dlist}" />
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="form-group">
                                <form:input path="address" name="address"  cssClass="gui-input" placeholder="描述..." />
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