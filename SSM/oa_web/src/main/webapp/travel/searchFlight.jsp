<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/17
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navigation.jsp"/>
<!--end header -->
<div align="container">

    <div class="widget refine-search">
        <div class="h3 widget-title">
            航班信息				</div>
        <div class="widget-content">

            <table class="table table-striped">
                <thead>
                <tr>
                    <th>航班名称</th>
                    <th>目的地</th>
                    <th>容客数</th>
                    <th>出发时间</th>
                    <th>返程时间</th>
                    <th>出发地</th>
                    <th>仓位等级</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:choose>
                    <c:when test="${empty flight}">
                        <td colspan="7" align="center"><p style="color: red">当前日期范围内暂无出现航班,请重新选择!</p></td>
                    </c:when>
                    <c:when test="${!empty flight}">
                        <c:forEach items="${flight}" var="subFlight">
                            <tr>
                                <td>${subFlight.flight_name}</td>
                                <td>${subFlight.arrive_place}</td>
                                <td>${subFlight.canContain}</td>
                                <td><ftm:formatDate value="${subFlight.start_date}" type="both" pattern="yyyy年MM月dd日"/></td>
                                <td><ftm:formatDate value="${subFlight.back_date}" type="both" pattern="yyyy年MM月dd日"/></td>
                                <td>${subFlight.start_place}</td>
                                <td>${subFlight.flightLevel}</td>
                                <td><a href="#">详情</a></td>
                            </tr>
                        </c:forEach>
                    </c:when>
                </c:choose>
                </tbody>
            </table>

        </div>
    </div>
    <!--widget -->
</div>
<jsp:include page="footer.jsp"/>
