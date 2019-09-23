<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'moreNews.jsp' starting page</title>
        <%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${APP_PATH}/CSS/Style.css" rel="stylesheet" type="text/css" />
<style type="text/css">

.atric_left {width:1200px;margin:0 auto;margin-top:10px;}
.atric_con {width:900px;float:left;border:1px solid #ddd;}
.wenzhang_rt { width:280px;height:350px;border:1px solid #ddd;float:right;overflow:hidden;}
.wenzhang_rt h2{padding:3px 10px;boder-bottom:1px solid #ddd;background-color:#e1e1e1;background:url(upload/123.jpg) repeat-x;font-size:15px;}
.wenzhang_rt ul{padding:10px 5px;}
.wenzhang_rt ul li{padding:5px 0px;font-size:15px;}
.page {text-align:center;height:30px;padding-top:10px;}
.page a,.page span{text-decoration:none;border:1px solid #e1e1e1;padding:5px 7px;}
.page a:hover,.page span:hover{color:red;}

</style>
  </head>
  
  <body>
    	<div class="head wapper">
			<div class="logo">
				<h1 style="    display: block;float: left;">
					<a href="http://pinpai.zhongtaojiaju.com/" title="陶瓷十大品牌榜"><img
						src='http://www.zhongtaojiaju.com/upload/image/20180703/201807030945298715.jpg'
						alt='中陶家居网' />
					</a>
				</h1>
			</div>
		</div>
		<div class="menubg">
			<div style="width:1200px; margin:0 auto; background:#2373bc;">
				<div class="menu wapper">
					<ul>
						<li><h2><a href="http://www.zhongtaojiaju.com/" target="_blank"title="首页">首页</a></h2></li>
						<li><h2><a href="http://www.zhongtaojiaju.com/redian/" target="_blank"title="热点头条">热点头条</a></h2></li>
						<li><h2><a href="http://www.zhongtaojiaju.com/newscenter/" target="_blank" title="新闻中心">新闻中心</a></h2></li>
						<li><h2><a href="http://pinpai.zhongtaojiaju.com/" target="_blank" title="品牌中心 TOP10">品牌中心 TOP10</a></h2></li>
						<li><h2><a href="http://www.zhongtaojiaju.com/chanyeshuju" target="_blank" title="产业数据中心">产业数据中心</a></h2></li>
						<li><h2><a href="http://www.zhongtaojiaju.com/jingxiaoshang" target="_blank" title="经销商数据库">经销商数据库</a></h2></li>
						<li><h2><a href="http://www.zhongtaojiaju.com/taoweibao" target="_blank" title="陶卫宝">陶卫宝</a></h2></li>
						<li><h2><a href="http://ccchome123.zhongtaojiaju.com/" target="_blank" title="家居123" rel="nofollow">家居123</a></h2></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="atric_left">
            <div class="atric_con">
            <div style="font-size:13px;height:15px;background:url(upload/123.jpg) repeat-x;border-bottom:1px dashed #ddd;padding:5px 10px;">
            	<span>位置：品牌榜相关文章</span>
            </div>
                <table width="100%" align="center" cellspacing="10" cellpadding="0" border="0">
                <c:forEach items="${pageInfo.list}" var="n">
                	<tr>
                        <td align="left" width="85%">
                              <a href="${APP_PATH}/newsdetail/${n.nid}" target="_blank" style="color: #0569cc; font-weight: bold;font-size:15px;">${n.title}</a>
                        </td>
                        <td align="left" width="15%">时间:${n.time}
                        </td>
                    </tr>
                
                    <tr>
                        <td align="left" style="font-size: 13px; border-bottom: #ddd dashed 1px;padding-bottom:15px;line-height:25px;"colspan="2">
                             ${n.ndescribe}
                            <a href="${APP_PATH}/newsdetail/${n.nid}" target="_blank" style="float:right;color: #2373bc;">阅读更多  > ></a>
                        </td>
                    </tr>
                   </c:forEach>
                </table>
                <div class="page">
                <c:if test="${pageInfo.hasPreviousPage}">
                	<a href="moreNews?pn=${pageInfo.pageNum-1}"><span>上一页</span></a>
                </c:if>
                	<c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                	<c:if test="${page_num==pageInfo.pageNum}">
                	<a href="" rel="nofollow">${page_num}</a>
                	</c:if>
                	<c:if test="${page_num!=pageInfo.pageNum}">
                	<a href="moreNews?pn=${page_num}" rel="nofollow">${page_num}</a>
                	</c:if>
                	</c:forEach>
                	<c:if test="${pageInfo.hasNextPage}">
                	<a href="moreNews?pn=${pageInfo.pageNum+1}"><span>下一页</span></a>
                	</c:if>
                </div>
                </div>
				
				<div class="wenzhang_rt" >
        	<h2>相关文章</h2>
            <ul>
            	<c:forEach items="${n}" var="n">
				<li><a href="${APP_PATH}/newsdetail/${n.nid}">${n.title}</a></li>  
				</c:forEach>
            </ul>
   			</div>
			<div class="clear"></div>
				
            </div>

	
		<div class="linkbg">
			<div
				style=" width:1200px; margin:0 auto; background:#f6f6f6; padding-top:20px;">

				<div class="link wapper">
					<div class="link_tit">
						<img src="http://www.zhongtaojiaju.com/images/lin.jpg">
					</div>
					<span> <a href="http://pinpai.zhongtaojiaju.com/" target="_blank"
						title="陶瓷十大品牌">陶瓷十大品牌</a> <a
						href="http://dinggu.co.chinayigui.com/" target="_blank"
						title="顶固衣柜">顶固衣柜</a> <a href="http://www.chinajcz.com/brand/"
						target="_blank" title="集成灶品牌">集成灶品牌</a> <a
						href="http://dp-home.co.chinajsq.cn/" target="_blank"
						title="杜邦净水器">杜邦净水器</a> <a href="http://www.qyjuliqz.com/ "
						target="_blank" title="手动液压叉车">手动液压叉车</a> <a
						href="http://czw.99114.com" target="_blank" title="中国瓷砖产业网">中国瓷砖产业网</a>

						<a href="http://www.328f.com/" target="_blank" title="红木家具">红木家具</a>

						<a href="https://top10.chinamenwang.com/" target="_blank"
						title="木门品牌">木门品牌</a> <a href="http://shanghai.b2b.kuyiso.com/"
						target="_blank" title="上海易库搜">上海易库搜</a> </span>
					<div class="clear"></div>
				</div>


				<div class="footer_cs">
					<ul>
						<li><img src="${APP_PATH}/upload/f1.jpg">
						</li>
						<li><img src="${APP_PATH}/upload/f2.jpg">
						</li>
						<li><img src="${APP_PATH}/upload/f3.jpg">
						</li>
						<li><img src="${APP_PATH}/upload/f4.jpg">
						</li>
						<li><img src="${APP_PATH}/upload/f5.jpg">
						</li>
						<li><img src="${APP_PATH}/upload/f6.jpg">
						</li>
						<li><img src="${APP_PATH}/upload/f7.jpg">
						</li>
					</ul>
				</div>

				<div class="clear"></div>


				<div class="footer_nav wapper">

					<a href="http://www.zhongtaojiaju.com/" rel="nofollow">首页</a> <a
						href="http://www.zhongtaojiaju.com/redian/" rel="nofollow">热点头条</a>

					<a href="http://www.zhongtaojiaju.com/newscenter/" rel="nofollow">新闻中心</a>

					<a href="http://pinpai.zhongtaojiaju.com/" rel="nofollow">品牌中心
						TOP10</a> <a href="http://www.zhongtaojiaju.com/chanyeshuju"
						rel="nofollow">产业数据中心</a> <a
						href="http://www.zhongtaojiaju.com/jingxiaoshang" rel="nofollow">经销商数据库</a>

					<a href="http://www.zhongtaojiaju.com/taoweibao" rel="nofollow">陶卫宝</a>

					<a href="http://ccchome123.zhongtaojiaju.com/" rel="nofollow">家居123</a>

					<a href="about.aspx?classid=95">关于我们</a>
				</div>
				<div class="clear"></div>
			</div>
		</div>



		<div class="footer">
			<div style="width:1200px; margin:0 auto; background:#2373bc;">
				<div class="foot wapper">
					<div class="ft_left">
						Copyright <span style="font-family:Arial, Helvetica, sans-serif">&copy;</span>
						2018-
						<script type="text/javascript">
							var myDate = new Date();
							document.write(myDate.getFullYear());
						</script>
						中陶家居网 All Rights Reserved. 技术支持：<a href="http://www.400301.com/"
							title="网站建设" target="_blank" rel="nofollow">网站建设</a>
						&nbsp;&nbsp;&nbsp;&nbsp; 备案号:<a
							href="http://www.miitbeian.gov.cn/" rel="nofollow">粤ICP备12026978号-3</a>
					</div>
					<div class="ft_right"></div>
				</div>
			</div>
		</div>
  </body>
</html>
