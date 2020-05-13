<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 修改报销单 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form id="admin-form" method="post" enctype="multipart/form-data" name="addForm" action="${pageContext.request.contextPath}/claim_voucher/update" modelAttribute="info">
                    <form:hidden path="report.rep_id"/>
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 项目基本信息 </span>
                        </div>
                        <div class="section">
                            <label for="report.rep_reason" class="field prepend-icon">
                                <form:input path="report.rep_projectName" id="projectName" cssClass="gui-input" placeholder="项目名称..."/>
                                <label for="report.rep_reason" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                                <span class="notice1"></span>
                            </label>
                        </div>
                        <div class="section">
                            <label for="report.rep_reason" class="field prepend-icon">
                                <form:textarea path="report.rep_reason" id="projectReason" cssStyle="height: 200px"  cssClass="gui-input" placeholder="事由..."/>
                                <label for="report.rep_reason" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                                <span class="notice2"></span>
                            </label>
                        </div>
                        <div class="section">
                                <label for="report.rep_majorClass" class="field prepend-icon">
                                    <form:hidden path="items[0].det_id"/>
                                    <form:hidden path="items[0].rep_id"/>
                                    <form:select path="report.rep_majorClass"  cssClass="gui-input" placeholder="学科类型..." items="${items}"/>
                                </label>

                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                                <span class="text-left">
                                    上传文件:
                                </span>
                                <div class="form-group">
                                    <input type="file" class="form-control" name="file" />
                                </div>
                            </div>
                        </div>

                        <div class="section-divider mt20 mb40">
                            <span> 项目成员 </span>
                        </div>
                        <div class="section row" id="items">
                            <c:forEach items="${info.items}" varStatus="sta">
                            <div>
                                <div class="col-md-12">
                                    <div class="col-md-5">
                                        <label for="items[0].det_sponsor" class="field prepend-icon">
                                            <form:input path="items[0].det_sponsor" id="projectSponsor" cssClass="gui-input" placeholder="发起人..." />
                                            <label for="items[0].det_sponsor" class="field-icon">
                                                <i class="fa fa-lock"></i>
                                            </label>
                                            <span class="notice3"></span>
                                        </label>
                                    </div>
                                    <div class="col-md-5">
                                        <label for="items[0].det_member" class="field prepend-icon">
                                            <form:input path="items[0].det_member" id="projectMember" cssClass="gui-input" placeholder="成员..." />
                                            <label for="items[0].det_member" class="field-icon">
                                                <i class="fa fa-lock"></i>
                                            </label>
                                            <span class="notice4"></span>
                                        </label>
                                    </div>
                                    <div class="col-md-1" style="text-align:right;">
                                        <button type="button" class="button"> X </button>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                        <div class="section row">
                            <div class="section" style="text-align:right;">
                                <div class="col-md-9">
                                    <button type="button"  class="button" id="addItemButton"> + </button>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" id="handout" class="button"> 保存 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>


<jsp:include page="bottom.jsp"/>