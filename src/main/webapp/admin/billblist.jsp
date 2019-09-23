<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
                </li>
               </ul>
                   </div>
			</div>
    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                        <div class="col-lg-7 col-md-offset-2">
                            <div class="card alert">
                                <div class="card-header">
                                    <h4>榜单列表</h4>
									<div class="card-header-right-icon">
										<ul>	
											<li ><a href="addbill.jsp"><i class="ti-plus"></i></a></li>
										</ul>
									</div>
                                </div>
                                <div class="card-body">
                                    <table class="table table-responsive table-bordered">
                                        <thead>
                                            <tr>
                                                <th>榜单名称</th>
                                                <th>年份</th>
                                                <th>标题</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                       
                                         <tbody>
                                          <c:forEach items="${pageInfo.list}" var="b">
                                            <tr>
                                                <th scope="row">${b.pname}</th>
                                                <td>${b.byid}年</td>
                                                <td>${b.btitle}</td>
                                                <td ><a href="findBid/${b.bid}"><button type="button"  class="btn btn-success">
                     								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                     							  编辑</button></a>
                                                <a href="pdelete/${b.bid}"><button type="button" onclick="return confirm('你确定删除？')" class="btn btn-danger">
                     								<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                     							  删除</button></a></td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-6 col-md-offset-6">
						<nav aria-label="Page navigation">
							  <ul class="pagination">
							  <li><a href="billblist?pn=1">首页</a></li>
							  <c:if test="${pageInfo.hasPreviousPage}">
							  	<li>
							      <a href="billblist?pn=${pageInfo.pageNum-1}" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							  </c:if>
							    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
							    <c:if test="${page_num==pageInfo.pageNum}">
							    	<li class="active"><a href="#">${page_num}</a></li>
							    </c:if>
							    <c:if test="${page_num!=pageInfo.pageNum}">
							    	<li><a href="billblist?pn=${page_num}">${page_num}</a></li>
							    </c:if>
							    </c:forEach>
							    <c:if test="${pageInfo.hasNextPage}">
							    <li>
							      <a href="billblist?pn=${pageInfo.pageNum+1}" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							    </c:if>							    
							    <li><a href="billblist?pn=${pageInfo.pages}">末页</a></li>
							  </ul>
							</nav>
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