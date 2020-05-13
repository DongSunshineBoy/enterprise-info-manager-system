<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="priv.rulan.oa.global.Content" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 处理项目申请 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 项目基本信息 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-1">项目名称</div>
                        <div class="col-md-5">
                                ${report.rep_projectName}
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-12">项目申请缘由:</div>
                        <div class="col-md-12">
                            <textarea disabled class="form-control">
                                ${report.rep_reason}
                            </textarea>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">创建人</div>
                        <div class="col-md-4">${report.initiator.emp_name}</div>
                        <div class="col-md-2">创建时间</div>
                        <div class="col-md-4"><spring:eval expression="report.rep_date"/></div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">待处理人</div>
                        <div class="col-md-4">${report.handler.emp_name}</div>
                        <div class="col-md-2">状态</div>
                        <div class="col-md-4">${report.rep_status}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">项目申请书</div>
                        <div class="col-md-6">
                            <input type="text" style="width: 300px" value="${report.rep_imageUrl.substring(8)}" disabled/>
                        </div>
                        <div class="col-md-2">
                            <a href="${pageContext.request.contextPath}/claim_voucher/downLoad?path=${report.rep_imageUrl}">下载项目文件</a>
                        </div>
                    </div>
                    <div class="section-divider mt20 mb40">
                        <span> 项目成员 </span>
                    </div>
                    <div class="section row">
                        <C:forEach items="${items}" var="item">
                            <div class="col-sm-1">队员:</div>
                        <div class="col-md-1">${item.det_sponsor}</div>
                        <div class="col-md-1">${item.det_member}</div>
                        </C:forEach>
                    </div>
                    <div class="section-divider mt20 mb40">
                        <span> 处理流程 </span>
                    </div>
                    <div class="section row">
                    <c:forEach items="${records}" var="record">
                        <div class="col-md-3">处理人名称:&nbsp&nbsp${record.dealer.emp_name}</div>
                        <div class="col-md-3">处理日期:&nbsp&nbsp<spring:eval expression="record.dea_date"/></div>
                        <div class="col-md-3">处理类型:&nbsp&nbsp${record.dea_type}</div>
                        <div class="col-md-3">备注:&nbsp&nbsp${record.dea_remark}</div>
                    </c:forEach>
                    </div>

                    <C:choose>
                        <C:when test="${!sessionScope.employee.emp_position.equals(Content.POST_CASHIER)}">
                            <form:form id="admin-form" name="addForm" action="${pageContext.request.contextPath}/claim_voucher/check" modelAttribute="record">
                                <form:hidden path="dea_report" />
                                <C:if test="${!sessionScope.employee.emp_position.equals(Content.POST_CASHIER)}">
                                    <div class="panel-body bg-light">
                                    <div class="col-md-12" style="color: red">评分标准为:合格,一般,优异</div>
                                    <div class="section">
                                        <input type="hidden"  name="id"/>
                                        <input type="hidden" name="employee"/>
                                        <input type="hidden" name="emp_id"/>
                                        <div class="form-group">
                                                <input type="text" class="form-control" maxlength="3" placeholder="成绩" name="score"/>
                                        </div>
                                    </div>
                                </C:if>
                                <div class="section">
                                    <div class="form-group">
                                        <form:input path="dea_remark" class="form-control" name="dea_remark" cssClass="gui-input" maxlength="20" placeholder="备注..."/>
                                    </div>
                                </div>
                                <div class="panel-footer text-right">
                                        <%--当前处理人为部门经理或者总经理--%>
                                    <c:if test="${sessionScope.employee.emp_position==Content.POST_DF || sessionScope.employee.emp_position==Content.POST_MAJOR}">
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_PASS}" >${Content.DEAL_PASS}</button>
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_BACK}" >${Content.DEAL_BACK}</button>
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_REJECT}" >${Content.DEAL_REJECT}</button>
                                    </c:if>
                                        <%-- 当前处理人为财务                                   --%>
                                    <c:if test="${sessionScope.employee.emp_position==Content.POST_CASHIER}">
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_PAID}" >${Content.DEAL_PAID}</button>
                                    </c:if>
                                    <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                                </div>
                                </div>
                            </form:form>
                        </C:when>
                        <C:otherwise>
                            <form:form id="admin-form" name="addForm" action="${pageContext.request.contextPath}/claim_voucher/checkNoWithScore" modelAttribute="record">
                                <form:hidden path="dea_report" />
                                <C:if test="${!sessionScope.employee.emp_position.equals(Content.POST_CASHIER)}">
                                    <div class="panel-body bg-light">
                                    <div class="col-md-12" style="color: red">评分标准为:合格,一般,优异</div>
                                    <div class="section">
                                            <div class="form-group">
                                                <label for="dea_remark" class="field prepend-icon form-control">
                                                <input type="hidden" name="id"/>
                                                <input type="hidden" name="employee"/>
                                                <input type="hidden" name="emp_id"/>
                                                <input type="text" class="form-control" maxlength="3" placeholder="成绩" name="score"/>
                                                </label>
                                            </div>
                                        </label>
                                    </div>
                                </C:if>
                                <div class="section">
                                    <div class="form-group">
                                        <form:input path="dea_remark" class="form-control" name="dea_remark" cssClass="gui-input" maxlength="20" placeholder="备注..."/>
                                    </div>
                                </div>
                                <div class="panel-footer text-right">
                                        <%--当前处理人为部门经理或者总经理--%>
                                    <c:if test="${sessionScope.employee.emp_position==Content.POST_DF || sessionScope.employee.emp_position==Content.POST_MAJOR}">
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_PASS}" >${Content.DEAL_PASS}</button>
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_BACK}" >${Content.DEAL_BACK}</button>
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_REJECT}" >${Content.DEAL_REJECT}</button>
                                    </c:if>
                                        <%-- 当前处理人为财务                                   --%>
                                    <c:if test="${sessionScope.employee.emp_position==Content.POST_CASHIER}">
                                        <button type="submit" class="button" name="dea_type" value="${Content.DEAL_PAID}" >${Content.DEAL_PAID}</button>
                                    </c:if>
                                    <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                                </div>
                                </div>
                            </form:form>
                        </C:otherwise>
                    </C:choose>

                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="checkBottom.jsp"/>
