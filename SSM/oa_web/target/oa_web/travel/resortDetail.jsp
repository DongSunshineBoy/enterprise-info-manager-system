<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/18
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navigation.jsp"/>
<div style="width: 100%;height: 100%">
            <img width="800px" height="500px" src="${pageContext.request.contextPath}/${resortDetail.detail_img}" alt="image" /><br/>
            <label>景点介绍</label>
            <p class="post-excerpt">${resortDetail.detail_desc}</p>
            <label>游客点评</label>
            <p class="post-excerpt">${resortDetail.detail_remark}</p>
</div>
<jsp:include page="footer.jsp"/>
