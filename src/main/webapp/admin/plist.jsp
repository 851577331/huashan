<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
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

<!-- Styles -->
    <link href="${APP_PATH }/static/assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="${APP_PATH }/static/assets/css/lib/themify-icons.css" rel="stylesheet">
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
				<div class="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card alert">
								<div class="card-header">
									<h4>品牌榜单</h4>
								</div>
								<div class="card-body">
                                    <table class="table table-hover table-bordered">
										<thead>
											<tr>
												<th class="text-center">品牌名</th>
												<th class="text-center">所属榜单</th>
												<th class="text-center">缩略图</th>
												<th class="text-center">年份</th>
												<th class="text-center">操作</th>
												<th class="text_center">
												<div class="dropdown">
												  <button class="btn btn-primary" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												   添加
												    <span class="caret"></span>
												    </button>												  
												  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
												  	<li><a href="addpinpai/2019">2019年</a></li>
												    <li><a href="addpinpai/2018">2018年</a></li>
												    <li><a href="addpinpai/2017">2017年</a></li>
												    <li><a href="addpinpai/2016">2016年</a></li>
												  </ul>
												</div>
												<div class="dropdown">
												  <button class="btn btn-primary" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												   年份
												    <span class="caret"></span>
												    </button>
												  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
												  	<li><a href="${APP_PATH }/admin/plist/2019">2019年</a></li>
												    <li><a href="${APP_PATH }/admin//plist/2018">2018年</a></li>
												    <li><a href="${APP_PATH }/admin/plist/2017">2017年</a></li>
												    <li><a href="${APP_PATH }/admin/plist/2016">2016年</a></li>
												  </ul>
												</div>
												</th>
											</tr>
										</thead>
										<c:forEach items="${pageInfo.list}" var="b">
										<tbody>
											<tr>
												<th class="text-center">${b.title}</th>
												<th class="text-center">${b.billboard.pname}</th>
												<th class="text-center"><img src="${APP_PATH }/${b.img}" height="70" width="200" /></th>
												<th class="text-center">${b.yid}年</th>
												<th class="text-center">
												<a href="findBrand/${b.pid}"><button type="button"  class="btn btn-success">
                     								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                     							  编辑</button></a>
                                               <a href="bdelete/${b.pid}"><button type="button" onclick="return confirm('你确定删除？')"  class="btn btn-danger">
                     								<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                     							  删除</button></a></th>
											</tr>
										</tbody>
									 </c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-md-offset-6">
						<nav aria-label="Page navigation">
							  <ul class="pagination">
							  <li><a href="${APP_PATH }/admin/plist?pn=1">首页</a></li>
							  <c:if test="${pageInfo.hasPreviousPage}">
							  	<li>
							      <a href="${APP_PATH }/admin/plist?pn=${pageInfo.pageNum-1}" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							  </c:if>
							    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
							    <c:if test="${page_num==pageInfo.pageNum}">
							    	<li class="active"><a href="#">${page_num}</a></li>
							    </c:if>
							    <c:if test="${page_num!=pageInfo.pageNum}">
							    	<li><a href="${APP_PATH }/admin/plist?pn=${page_num}">${page_num}</a></li>
							    </c:if>
							    </c:forEach>
							    <c:if test="${pageInfo.hasNextPage}">
							    <li>
							      <a href="${APP_PATH }/admin/plist?pn=${pageInfo.pageNum+1}" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							    </c:if>							    
							    <li><a href="${APP_PATH }/admin/plist?pn=${pageInfo.pages}">末页</a></li>
							  </ul>
							</nav>
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>			

	
	
	
    <script src="${APP_PATH }/static/assets/js/lib/jquery.min.js"></script><!-- jquery vendor -->
    <script src="${APP_PATH }/static/assets/js/lib/jquery.nanoscroller.min.js"></script><!-- nano scroller -->
    <script src="${APP_PATH }/static/assets/js/lib/sidebar.js"></script><!-- sidebar -->
    <script src="${APP_PATH }/static/assets/js/lib/bootstrap.min.js"></script><!-- bootstrap -->
    <script src="${APP_PATH }/static/assets/js/lib/mmc-common.js"></script>
    <script src="${APP_PATH }/static/assets/js/lib/mmc-chat.js"></script>
    <script src="${APP_PATH }/static/assets/js/scripts.js"></script><!-- scripit init-->
</body>
</html>