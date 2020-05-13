<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <title>LeYou</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/travel/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/travel/css/responsive.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/travel/css/jquery-ui-1.8.24.custom.css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery-ui-1.8.24.custom.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.mobile.customized.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/camera.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/selectnav.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/bootstrap.min.js"></script>
    <!--
    <script type="text/javascript" src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=AIzaSyB3tShW1hLlV2lYW8_sCVln6TLF2bWvgU8"></script>-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.googlemaps.1.01.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/theme.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


</head>

<div id="wrapper">
    <div id="container">

        <!--start header -->
        <header id="header">
            <div id="logo"><a href="index.jsp"><strong>乐游网</strong></a></div>
            <div id="searchbox">
                <form action="#">
                    <input type="text" id="search" placeholder="搜索" />
                    <button type="submit"></button>
                </form>
            </div>
            <div id="navigation">
                <ul id="nav">
                    <li class="selected"><a href="${pageContext.request.contextPath}/flight/to_index">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_advisory">旅游咨询</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/flight/to_advisory_result">攻略</a></li>
                            <li><a href="${pageContext.request.contextPath}/flight/to_advisory_detail">精选</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_logue">热门游记</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_instamatic">订票</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_hotel">订酒店</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_community">社区</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_personal">我的</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_compass">乘机须知</a></li>
                </ul>
            </div>
        </header>
        <!--end header -->