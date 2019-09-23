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
<script type="text/javascript" src="${APP_PATH}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="${APP_PATH}/ueditor/ueditor.all.js"></script>
<script type="text/javascript" charset="utf-8" src="${APP_PATH}/ueditor/lang/zh-cn/zh-cn.js"></script>

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
                                        <h4>修改文章</h4>
                                </div>
                                <div class="card-body">
									<div class="menu-upload-form">
										<form id="person" method="post" action="${APP_PATH}/admin/updatenew" enctype="multipart/form-data">
                                           	<div style="display:none">
                                           	<label class="col-sm-2 control-label">nid</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="nid" value="${requestScope.n.nid}" class="form-control"  required>
                                            </div>
                                            </div>
                                            <div style="display:none">
                                           	<label class="col-sm-2 control-label">发布时间</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="time" value="${requestScope.n.time}" class="form-control"  required>
                                            </div>
                                            </div>
                                            <label class="col-sm-2 control-label">标题</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="title" value="${requestScope.n.title}" class="form-control"  required>
                                            </div>
                                            <label class="col-sm-2 control-label">伪标题</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="weit" value="${requestScope.n.weit}" class="form-control"  required>
                                            </div>
                                            <label class="col-sm-2 control-label">责任编辑</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="editor" value="${requestScope.n.editor}" class="form-control"  required>
                                            </div>
                                            <label class="col-sm-2 control-label">作者</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="author" value="${requestScope.n.author}" class="form-control"  required>
                                            </div>
                                            <label class="col-sm-2 control-label">出处</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="source" value="${requestScope.n.source}" class="form-control"  required>
                                            </div>
                                            <label class="col-sm-2 control-label">关键词</label>
                                            <div class="col-sm-12">
                                                <textarea class="form-control" rows="3" name="nkeyword">${requestScope.n.nkeyword}</textarea>
                                            </div>
                                            <label class="col-sm-2 control-label">描述</label>
                                            <div class="col-sm-12">
                                                <textarea class="form-control" rows="3" name="ndescribe">${requestScope.n.ndescribe}</textarea>
                                            </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">文章内容</label>
                                            <div class="col-sm-12">
                                          <textarea name="myEditor" id="myEditor" rows="8" style="height: 350px; width: 99%;">${requestScope.n.myEditor}</textarea>
                                            </div>
                                        </div>  
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">  	
                                                <button type="submit" class="btn btn-lg btn-primary">
                                                	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                                	添加
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
    <script type="text/javascript">
    /*实例化编辑器 */
    var um = UE.getEditor('myEditor');
	</script>
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