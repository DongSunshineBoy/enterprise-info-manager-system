<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 项目申请进度详情 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 项目基本信息 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">项目名称</div>
                        <div class="col-md-4">${report.rep_projectName}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-12">申请缘由</div>
                        <div class="form-group">
                                <textarea class="form-control col-md-12">
                                    ${report.rep_reason}
                                </textarea>
                        </div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">创建人</div>
                        <div class="col-md-4">${report.initiator.emp_name}</div>
                        <div class="col-md-2">创建时间</div>
                        <div class="col-md-4"><spring:eval expression="requestScope.report.rep_date"></spring:eval></div>
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
                        <span> 项目申请信息明细 </span>
                    </div>
                    <div class="section row">
                        <C:forEach items="${items}" var="item">
                            <div class="col-md-1">队员</div>
                        <div class="col-md-1">${item.det_sponsor}</div>
                        <div class="col-md-1">${item.det_member}</div>
                        </C:forEach>
                    </div>
                    <div class="section-divider mt20 mb40">
                        <span> 处理流程 </span>
                    </div>
                    <div class="section row">
                    <c:forEach items="${records}" var="records">
                        <div class="col-md-1">${records.dealer.emp_name}</div>
                        <div class="col-md-3"><spring:eval expression="records.dea_date"/></div>
                        <div class="col-md-1">${records.dea_type}</div>
                        <div class="col-md-2">${records.dea_result}</div>
                        <div class="col-md-5">备注：${records.dea_remark}</div>
                    </c:forEach>
                    </div>
                    <div class="panel-footer text-right">
                        <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<jsp:include page="bottom.jsp"/>
