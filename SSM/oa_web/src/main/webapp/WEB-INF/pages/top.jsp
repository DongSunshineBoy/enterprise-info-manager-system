<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="priv.rulan.oa.global.Content" %>

<!DOCTYPE html>
<html>


<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">

    <title> OA系统 </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrapValidator.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">
</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/dashboard.html">
                <b>大学生创新创业管理系统</b>OA
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/5.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15"> ${sessionScope.employee.emp_name}--${sessionScope.employee.emp_position} </span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/self" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> 个人信息
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/to_change_password" class="animated animated-short fadeInUp">
                            <span class="fa fa-gear"></span> 设置密码 </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="${pageContext.request.contextPath}/quit" class="">
                            <span class="fa fa-power-off pr5"></span> 退出 </a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="${pageContext.request.contextPath}/assets/img/avatars/3.jpg" class="img-responsive">
                        </a>
                        <div class="media-body">
                            <div class="media-author">${sessionScope.employee.emp_name}--${sessionScope.employee.emp_position}</div>
                            <div class="media-links">
                                <a href="${pageContext.request.contextPath}/quit">退出</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <c:if test="${!sessionScope.employee.emp_position.equals(Content.POST_GF)}">
                    <li class="sidebar-label pt20">日常管理</li>
                    <li>
                        <a href="${pageContext.request.contextPath}/claim_voucher/deal">
                            <span class="glyphicon glyphicon-book"></span>
                            <span class="sidebar-title">待处理申请</span>
                            <span class="sidebar-title-tray">
                <span class="label label-xs bg-primary">New</span>
              </span>
                        </a>
                    </li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/claim_voucher/self">
                            <span class="glyphicon glyphicon-home"></span>
                            <span class="sidebar-title">个人项目申请</span>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/claim_voucher/to_add">
                            <span class="fa fa-calendar"></span>
                            <span class="sidebar-title">填写项目申请</span>
                        </a>
                    </li>
                </c:if>

                <c:if test="${sessionScope.employee.emp_position.equals(Content.POST_GF)}">
                    <li class="sidebar-label pt15">基础信息管理</li>

                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="glyphicon glyphicon-check"></span>
                            <span class="sidebar-title">大创参与专家管理</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="nav sub-nav">
                            <li>
                                <a href="${pageContext.request.contextPath}/employee/list">
                                    <span class="glyphicon glyphicon-calendar"></span> 所有专家 </a>
                            </li>
                            <li class="active">
                                <a href="${pageContext.request.contextPath}/employee/to_add">
                                    <span class="glyphicon glyphicon-check"></span> 添加专家 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="fa fa-columns"></span>
                            <span class="sidebar-title">学科管理</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="nav sub-nav">
                            <li>
                                <a href="${pageContext.request.contextPath}/department/list">
                                    <span class="glyphicon glyphicon-calendar"></span> 所有学科部门 </a>
                            </li>
                            <li class="active">
                                <a href="${pageContext.request.contextPath}/department/to_add">
                                    <span class="glyphicon glyphicon-check"></span> 添加学科部门 </a>
                            </li>
                        </ul>
                    </li>
                </c:if>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="#">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">