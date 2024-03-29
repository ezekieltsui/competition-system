<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理后台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Css/amazeui.css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Css/core.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Css/menu.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Css/admin.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Css/page/typography.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Css/page/form.css"/>
</head>
<body>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="${pageContext.request.contextPath}/admin/administrator_page"
           class="logo"><span>Admin<span>to</span></span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">待审核</h4></li>
        </ul>
    </div>
</header>
<!-- end page -->


<div class="admin">
    <!--<div class="am-g">-->
    <!-- ========== Left Sidebar Start ========== -->
    <!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
            <div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <!-- User -->
            <div class="user-box am-hide-sm-only">
                <div class="user-img">
                    <img src="${pageContext.request.contextPath}/assets/Images/avatar-1.jpg" alt="user-img"
                         title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><a href="#">Mat Helme</a></h5>
                <ul class="list-inline">
                    <li>
                        <a href="#">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="text-custom">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End User -->

            <ul class="am-list admin-sidebar-list">
                <li><a href="${pageContext.request.contextPath}/admin/administrator_page"><span
                        class="am-icon-home"></span> 首页</a></li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span>
                        比赛 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                        <li><a href="${pageContext.request.contextPath}/admin/under_review_page">待审核</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/on_the_march_page">进行中</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/finished_page">已结束</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart"
                                                                                      aria-hidden="true"></i> 统计图表 <span
                            class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
                        <li><a href="${pageContext.request.contextPath}/admin/chart_pie_page" class="am-cf">
                            <span>统计</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- sidebar end -->

    <!-- Start right Content here -->
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="card-box">
                <!-- Row start -->
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">

                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field">
                            <span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
                        </div>
                    </div>
                </div>
                <!-- Row end -->

                <!-- Row start -->
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-id">ID</th>
                                    <th class="table-title">比赛名称</th>
                                    <th class="table-type">类别</th>
                                    <th class="table-author am-hide-sm-only">组织者</th>
                                    <th class="table-date am-hide-sm-only">申请时间</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>
                                <tbody id="under_review_list">

                                <c:forEach items="${underReviewMatchs}" var="match" varStatus="status">
                                    <tr>
                                        <td>${status.count}</td>
                                        <td><a href="#">${match.matchName}</a></td>
                                        <td>${match.categoryID}</td>
                                        <td class="am-hide-sm-only">${match.organizer}</td>
                                        <td class="am-hide-sm-only">${match.applyTime}</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="window.location.href='check?matchID=${match.matchID}&result=通过'"><span
                                                            class="am-icon-pencil-square-o"></span> 通过
                                                    </button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="window.location.href='check?matchID=${match.matchID}&result=不通过'">
                                                        <span class="am-icon-trash-o"></span> 不通过
                                                    </button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                <!-- Row end -->
            </div>
        </div>
    </div>
</div>
<!-- end right Content here -->
<!--</div>-->

<!-- navbar -->
<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
   data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/jquery-2.1.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/amazeui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/blockUI.js"></script>
</body>

</html>

<script>

</script>