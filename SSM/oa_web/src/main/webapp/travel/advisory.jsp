<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/17
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navigation.jsp"/>
<!--end header -->
<div class="subheader">
    <div class="left">
        <span class="page-title">放眼看世界</span>
        <span class="page-desc">世界是一本书，旅行是阅读的过程。</span>
    </div>
</div>
<!--subheader -->

<div id="content">
    <div class="tag-filter">
        <ul>
            <li><a class="selected" data-filter="*">全部</a></li>
            <li><a data-filter=".travel">长途旅行</a></li>
            <li><a data-filter=".holidays">度假游</a></li>
            <li><a data-filter=".hotel">酒店旅馆</a></li>
        </ul>
    </div>

    <div class="tag-filter-container">
        <c:forEach items="${advisory}" begin="5" end="${advisory.size()}"  var="advise">
            <div class="one-fourth travel">
                <div class="post-item">
                    <div class="image-place">
                        <img src="${pageContext.request.contextPath}/${advise.img}" alt="image" />
                    </div>
                    <div class="post-content">
                        <h2 class="post-title"><a href="${pageContext.request.contextPath}/flight/resortDetail?id=${advise.id}">${advise.resortName}</a></h2>
                        <p class="post-excerpt">${advise.presentation}</p>
                    </div>
                    <div class="post-meta">
                        <span class="comment-count">12 条评论</span>
                        <a class="read-more" href="${pageContext.request.contextPath}/flight/resortDetail?id=${advise.id}">详情</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    <br class="clear" />
</div>
<!--content -->
<jsp:include page="footer.jsp"/>
