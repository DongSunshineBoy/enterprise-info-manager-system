<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/17
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navigation.jsp"/>
<div align="container">

    <div class="widget refine-search">
        <div class="h3 widget-title">
            酒店信息				</div>
        <div class="widget-content">

            <table class="table table-striped">
                <thead>
                <tr>
                    <th>酒店名称</th>
                    <th>容客数</th>
                    <th>所属城市</th>
                    <th>入住日期</th>
                    <th>退房日期</th>
                    <th>酒店级别</th>
                    <th>酒店描述</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:if test="${empty hotel}">
                    <td align="center" colspan="7"><p style="color: red">当前日程及范围内暂无酒店,请重新选择!</p></td>
                </c:if>
                <c:forEach items="${hotel}" var="subHotel">
                    <tr>
                        <td>${subHotel.hotelName}</td>
                        <td>${subHotel.containNum}</td>
                        <td>${subHotel.city}</td>
                        <td><ftm:formatDate value="${subHotel.inDate}" type="both" pattern="yyyy年MM月dd日"/></td>
                        <td><ftm:formatDate value="${subHotel.outDate}" type="both" pattern="yyyy年MM月dd日"/></td>
                        <td>${subHotel.hotelLevel}</td>
                        <td>${subHotel.hotelDesc}</td>
                        <td><a href="#">详情</a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>

        </div>
    </div>
    <!--widget -->
</div>
<jsp:include page="footer.jsp"/>