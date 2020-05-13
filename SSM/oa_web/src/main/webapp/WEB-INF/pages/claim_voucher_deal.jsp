<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="priv.rulan.oa.global.Content" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 待处理申请 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh" onclick="javascript:window.location.href='${pageContext.request.contextPath}/claim_voucher/deal';"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-trash" onclick="javascript:window.location.href='${pageContext.request.contextPath}/claim_voucher/to_delete';"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-plus" onclick="javascript:window.location.href='${pageContext.request.contextPath}/claim_voucher/to_add';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <table id=""message-table class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <th class="text-center hidden-xs">Select</th>
                            <th class="hidden-xs">项目名称</th>
                            <th class="hidden-xs">申请缘由</th>
                            <th>状态</th>
                            <th class="hidden-xs">创建人</th>
                            <th class="hidden-xs">学科类别</th>
                            <th class="hidden-xs">项目评分</th>
                            <th class="text-center">创建时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="cv">
                        <tr class="message-unread">
                            <input type="hidden" class="id" value="${cv.rep_id}"/>
                            <td class="hidden-xs">
                                <label class="option block mn">
                                    <input type="checkbox" id="flag" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td>${cv.rep_projectName}</td>
                            <td>
                               <c:choose>
                                   <c:when test="${cv.rep_reason.length()>10}">
                                       ${cv.rep_reason.substring(0,10)}...
                                   </c:when>
                                   <c:otherwise>
                                       ${cv.rep_reason}
                                   </c:otherwise>
                               </c:choose>
                            </td>
                            <td class="hidden-xs">
                                <span class="badge badge-warning mr10 fs11">${cv.rep_status}</span>
                            </td>
                            <td>${cv.initiator.emp_name}</td>
                            <td class="text-center fw600">${cv.rep_majorClass}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${cv.score.score==0.0||empty cv.score.score}">
                                        未评分
                                    </c:when>
                                    <c:otherwise>
                                        ${cv.score.score}
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td><spring:eval expression="cv.rep_date"/></td>
                            <td>
<%-- 如果报销单状态为新建   或者打回状态显示修改和提交功能                            --%>
                                <c:if test="${cv.rep_status.equals(Content.CLAIMVOUCHER_CREATED) || cv.rep_status.equals(Content.CLAIMVOUCHER_BACK)}">
                                    <a href="${pageContext.request.contextPath}/claim_voucher/to_update?id=${cv.rep_id}">修改</a>
                                    <a href="${pageContext.request.contextPath}/claim_voucher/submit?id=${cv.rep_id}">提交</a>
                                </c:if>
<%--如果报销单状态为已经提交 或者为复审状态   --%>
                                <c:if test="${cv.rep_status.equals(Content.CLAIMVOUCHER_SUBMIT)|| cv.rep_status.equals(Content.CLAIMVOUCHER_RECHECH)}">
                                    <a href="${pageContext.request.contextPath}/claim_voucher/to_check?id=${cv.rep_id}">审核</a>
                                </c:if>
<%--    如果状态为许可状态则显示打款功能--%>
                                <c:if test="${cv.rep_status.equals(Content.CLAIMVOUCHER_APPROVAL)}">
                                    <a href="${pageContext.request.contextPath}/claim_voucher/to_check?id=${cv.rep_id}">立项</a>
                                </c:if>
    <a href="${pageContext.request.contextPath}/claim_voucher/detail?id=${cv.rep_id}">详细信息</a>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>
