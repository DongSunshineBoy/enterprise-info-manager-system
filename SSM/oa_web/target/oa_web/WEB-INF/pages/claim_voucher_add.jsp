<%@ page import="priv.rulan.oa.entity.Report" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 填写申请项目 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form col-md-12 theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form id="admin-form" name="addForm" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/claim_voucher/add"  modelAttribute="info" >
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                                <label for="report.rep_projectName" class="field prepend-icon">
                                    <form:input path="report.rep_projectName" id="projectName"   name="rep_projectName"  cssClass="gui-input" maxlength="15" placeholder="项目名称..."/>
                                    <label for="report.rep_projectName" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                    <span class="notice1"></span>
                                </label>
                            </div>
                        </div>

                        <div class="section row">
                            <div class="col-md-12">
                                <label for="report.rep_reason" class="field prepend-icon">
                                    <form:textarea path="report.rep_reason" id="projectReason"   cssClass="gui-input" name="rep_reason" cssStyle="height: 200px" maxlength="300" placeholder="申请理由..."/>
                                    <label for="report.rep_reason" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                                <span class="notice2"></span>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                                <label class="field prepend-icon">
                                    <form:select path="report.rep_majorClass"  name="majorClass" cssClass="gui-input" placeholder="学科类型..." items="${items}"/>
                                </label>
                            </div>
                            <span class="notice"></span>
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
                            <span> 费用明细 </span>
                        </div>
                        <div class="section  row" id="items">
                            <div>
                                <div class="col-md-12">
                                    <div class="row col-md-5">
                                        <label for="items[0].det_sponsor" class="field prepend-icon">
                                            <form:input path="items[0].det_sponsor" id="projectSponsor"   name="det_sponsor"  cssClass="gui-input" placeholder="组员..."/>
                                            <label for="items[0].det_sponsor" class="field-icon">
                                                <i class="fa fa-lock"></i>
                                            </label>
                                            <span class="notice3"></span>
                                        </label>
                                    </div>
                                    <div class="row col-md-5">
                                        <label for="items[0].det_member" class="field prepend-icon">
                                            <form:input path="items[0].det_member" id="projectMember" data-bv-notempty-message="用户名不能为空" name="det_member" cssClass="gui-input det_member" placeholder="组员..."/>
                                            <label for="items[0].det_member" class="field-icon">
                                                <i class="fa fa-lock"></i>
                                            </label>
                                            <span class="notice4"></span>
                                        </label>
                                    </div>
                                    <div class="col-md-2" style="text-align:right;">
                                        <button type="button" class="button"> X </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="section" style="text-align:right;">
                                <div class="col-md-12">
                                    <button type="button" class="button" id="addItemButton"> + </button>
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
<script src="./js/report.js"></script>