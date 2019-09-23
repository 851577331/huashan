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
									<h4>品牌文章</h4>
									<div class="card-header-right-icon">
										<ul>	
											<li ><a href="${APP_PATH}/admin/addnew.jsp"><i class="ti-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="card-body">
                                    <table class="table table-hover table-bordered">
										<thead>
											<tr>
												<th class="text-center">标题</th>
												<th class="text-center">作者</th>
												<th class="text-center">出处</th>
												<th class="text-center">发布时间</th>
												<th class="text-center">操作</th>
												<th class="text_center">
												
												</th>
											</tr>
										</thead>
										<c:forEach items="${pageInfo.list}" var="n">
										<tbody>
											<tr>
												<th class="text-center">${n.title}</th>
												<th class="text-center">${n.author}</th>
												<th class="text-center">${n.source}</th>
												<th class="text-center">${n.time}</th>
												<th class="text-center">
												<a href="finbyidnew/${n.nid}"><button type="button"  class="btn btn-success">
                     								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                     							  编辑</button></a>
                                               <a href="deletenew/${n.nid}"><button type="button" onclick="return confirm('你确定删除？')"  class="btn btn-danger">
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
							  <li><a href="listnew?pn=1">首页</a></li>
							  <c:if test="${pageInfo.hasPreviousPage}">
							  	<li>
							      <a href="listnew?pn=${pageInfo.pageNum-1}" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							  </c:if>
							    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
							    <c:if test="${page_num==pageInfo.pageNum}">
							    	<li class="active"><a href="#">${page_num}</a></li>
							    </c:if>
							    <c:if test="${page_num!=pageInfo.pageNum}">
							    	<li><a href="listnew?pn=${page_num}">${page_num}</a></li>
							    </c:if>
							    </c:forEach>
							    <c:if test="${pageInfo.hasNextPage}">
							    <li>
							      <a href="listnew?pn=${pageInfo.pageNum+1}" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							    </c:if>							    
							    <li><a href="listnew?pn=${pageInfo.pages}">末页</a></li>
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