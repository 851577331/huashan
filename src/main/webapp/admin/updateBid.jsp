<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
<link href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!-- Styles -->
    <link href="${APP_PATH }/static/assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="${APP_PATH }/static/assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="${APP_PATH }/static/assets/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="${APP_PATH }/static/assets/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="${APP_PATH }/static/assets/css/lib/weather-icons.css" rel="stylesheet" />
    <link href="${APP_PATH }/static/assets/css/lib/mmc-chat.css" rel="stylesheet" />
    <link href="${APP_PATH }/static/assets/css/lib/sidebar.css" rel="stylesheet">
    <link href="${APP_PATH }/static/assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="${APP_PATH }/static/assets/css/lib/simdahs.css" rel="stylesheet">
    <link href="${APP_PATH }/static/assets/css/style.css" rel="stylesheet">

</head>
<body>
    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                  <ul>
					<li class="label">菜单</li>
					<li><a href="${APP_PATH }/admin/plist"><i class="ti-cup"></i>品牌榜单</a></li>
					<li><a href="${APP_PATH }/admin/billblist"><i class="ti-check-box"></i>榜单列表</a></li>
					<li><a href="${APP_PATH }/admin/listnew"><i class="ti-book"></i>品牌文章</a></li>
					<li><a href="${APP_PATH }/admin/list"><i class="ti-user"></i>员工列表</a></li>
					<li><a><i class="ti-close"></i>退出登录</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="header">
        <div class="pull-left">
            <div class="logo" id="sideLogo">
                <a href="#">
                    <img class="full-logo" src="${APP_PATH }/static/assets/images/logo-big.png" alt="SimDahs">
                    <img class="small-logo" src="${APP_PATH }/static/assets/images/logo-small.png" alt="SimDahs">
                </a>
            </div>
            <div class="hamburger sidebar-toggle">
                <span class="ti-menu"></span>
            </div>
        </div>
        <div class="pull-right p-r-15">
            <ul>
                <li class="header-icon dib">
                <span class="user-avatar">${sessionScope.user.uname}
                	<span hidden="hidden" id="role">${sessionScope.user.role}</span>
                </span>
               </ul>
                   </div>
			</div>
<div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card alert">
                                <div class="card-header">
                                        <h4>修改榜单</h4>
                                </div>
                                <div class="card-body">
									<div class="menu-upload-form">
										<form class="form-horizontal" action="${APP_PATH}/admin/updateBid/${requestScope.billboard.bid}" method="post">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">榜单名称</label>
                                            <div class="col-sm-6">
                                                <input type="text" name="pname" value="${requestScope.billboard.pname}" class="form-control"  required>
                                            </div>
                                        </div>                      
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">年份</label>
                                            <div class="col-sm-6">
                                                <input type="text" name="byid" value="${requestScope.billboard.byid}" class="form-control"  required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">标题</label>
                                            <div class="col-sm-6">
                                                <input type="text" name="btitle" value="${requestScope.billboard.btitle}" class="form-control" placeholder="此项SEO填写">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">关键词</label>
                                            <div class="col-sm-6">
                                                <textarea class="form-control" name="bkeywords" rows="3" placeholder="此项SEO填写">${requestScope.billboard.bkeywords}</textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">描述</label>
                                            <div class="col-sm-6">
                                                <textarea class="form-control" name="bdescription" rows="3" placeholder="此项SEO填写">${requestScope.billboard.bdescription}</textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">  	
                                                <button type="submit" class="btn btn-lg btn-primary">
                                                	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                                	保存
                                                	</button>
                                            </div>
                                        </div>
                                    </form>
									</div>
                                </div>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>
<!-- =================================================================================================== -->
    <script src="${APP_PATH }/static/assets/js/lib/jquery.min.js"></script><!-- jquery vendor -->
    <script src="${APP_PATH }/static/assets/js/lib/jquery.nanoscroller.min.js"></script><!-- nano scroller -->    
    <script src="${APP_PATH }/static/assets/js/lib/sidebar.js"></script><!-- sidebar -->
    <script src="${APP_PATH }/static/assets/js/lib/bootstrap.min.js"></script><!-- bootstrap -->
    <script src="${APP_PATH }/static/assets/js/lib/mmc-common.js"></script>
    <script src="${APP_PATH }/static/assets/js/lib/mmc-chat.js"></script>
	<!--  Chart js -->
	<script src="${APP_PATH }/static/assets/js/lib/chart-js/Chart.bundle.js"></script>
	<script src="${APP_PATH }/static/assets/js/lib/chart-js/chartjs-init.js"></script>
	<!-- // Chart js -->


    <script src="${APP_PATH }/static/assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script><!-- scripit init-->
    <script src="${APP_PATH }/static/assets/js/lib/sparklinechart/sparkline.init.js"></script><!-- scripit init-->
	
	<!--  Datamap -->
    <script src="${APP_PATH }/static/assets/js/lib/datamap/d3.min.js"></script>
    <script src="${APP_PATH }/static/assets/js/lib/datamap/topojson.js"></script>
    <script src="${APP_PATH }/static/assets/js/lib/datamap/datamaps.world.min.js"></script>
    <script src="${APP_PATH }/static/assets/js/lib/datamap/datamap-init.js"></script>
	<!-- // Datamap -->
    <script src="${APP_PATH }/static/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>	
    <script src="${APP_PATH }/static/assets/js/lib/weather/weather-init.js"></script>
    <script src="${APP_PATH }/static/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="${APP_PATH }/static/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
    <script src="${APP_PATH }/static/assets/js/scripts.js"></script><!-- scripit init-->
</body>
</html>