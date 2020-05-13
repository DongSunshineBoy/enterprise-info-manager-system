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
                <form:form id="admin-form" name="addForm" action="${pageContext.request.contextPath}/claim_voucher/add" modelAttribute="info">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section">
                            <label for="report.rep_reason" class="field prepend-icon">
                                <form:textarea path="" cssClass="gui-input" placeholder="项目名称..."/>
                                <label for="report.rep_reason" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <div class="row col-md-3"></div>
                            <label for="report.rep_reason" class="field prepend-icon">
                                <form:select path="" cssClass="gui-input" placeholder="学科类型..." items="${items}"/>
                            </label>
                        </div>
                        <div class="section">
                            <label for="report.rep_reason" class="field prepend-icon">
                                <form:textarea path="report.rep_reason" cssStyle="height: 200px" cssClass="gui-input" placeholder="申请理由..."/>
                                <label for="report.rep_reason" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label class="text-center ">上传项目文件文件</label>
                            <label for="" class="field prepend-icon">
                                <form:input type="file" cssClass="gui-input"  path=""   placeholder="上传文件..." />
                                <label for="report.rep_reason" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section-divider mt20 mb40">
                            <span> 费用明细 </span>
                        </div>
                        <div class="section  row" id="items">
                            <div>
                                <div class="col-md-2">
                                    <label for="items[0].det_cost" class="field prepend-icon">
                                        <form:input path="items[0].det_cost" cssClass="gui-input money" placeholder="负责人..."/>
                                        <label for="items[0].det_cost" class="field-icon">
                                            <i class="fa fa-lock"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label for="items[0].det_desc" class="field prepend-icon">
                                        <form:input path="items[0].det_desc" cssClass="gui-input" placeholder="组员..." />
                                        <label for="items[0].det_desc" class="field-icon">
                                            <i class="fa fa-lock"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label for="items[0].det_desc" class="field prepend-icon">
                                        <form:input path="" cssClass="gui-input" placeholder="组员..." />
                                        <label for="items[0].det_desc" class="field-icon">
                                            <i class="fa fa-lock"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label for="items[0].det_desc" class="field prepend-icon">
                                        <form:input path="" cssClass="gui-input" placeholder="组员..." />
                                        <label for="items[0].det_desc" class="field-icon">
                                            <i class="fa fa-lock"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label for="items[0].det_desc" class="field prepend-icon">
                                        <form:input path="" cssClass="gui-input" placeholder="组员..." />
                                        <label for="items[0].det_desc" class="field-icon">
                                            <i class="fa fa-lock"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-1" style="text-align:right;">
                                    <button type="button" class="button"> X </button>
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