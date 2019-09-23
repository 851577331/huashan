<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<title>${requestScope.brand.title1}</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="${APP_PATH}/CSS/Style.css" rel="stylesheet" type="text/css" />

</head>

<body>

<div class="header1 wapper">
  <h1><a href="http://www.zhongtaojiaju.com/"><img src="http://www.zhongtaojiaju.com/upload/image/20180703/201807030945298715.jpg" alt="中国陶瓷十大品牌中心_中陶家居网" style="float:left;" /></a> </h1>
</div>
<div class="daohangbg">
  <div class="daohang wapper">
    <ul>
		<c:forEach items="${bill}" var="t">
		<li><h2><a href="${APP_PATH}/pinpailist/${t.bid}/${t.byid}">${t.pname} </a></h2></li>
		</c:forEach>	
		<div class="clear"></div>
	</ul>
  </div>
</div>

<div class="clear"></div>
    <div class="pinpai1 wapper">
	<div class="pinpai1_lt">
        <div class="p1_left">
            <div class="hy">
            <img src="${APP_PATH}/${requestScope.brand.img}" />
            </div>
            <ul>
                <li>品牌:${requestScope.brand.title}</li>
                <li>官网:${requestScope.brand.href} </li>
            </ul>
        </div>
        <div class="p1_right">
               <p >${requestScope.brand.miaoshu}</p>
        </div>
	</div>
	<div class="pinpai1_rt" >
         <h2>品牌中心</h2>
            <ul >
            <c:forEach items="${B}" var="p">
    			<li>
                 <div class="img">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="${APP_PATH}/pinpaidetail/${p.pid}"><img src="${APP_PATH}/${p.img}" alt="${p.alt}"></a></td>
                        </tr>
                    </table>
                    </div>
                    <a href="${APP_PATH}/pinpaidetail/${p.pid}"><span>${p.title1}</span></a>
                </li>  
                </c:forEach>
            </ul>
    </div>
 <div class="clear"></div>
	<div class="clear"></div>
    </div>
    
    <div class="linkbg">
			<div
				style=" width:1200px; margin:0 auto; background:#f6f6f6; padding-top:20px;">

				<div class="link wapper">
					<div class="link_tit">
						<img src="${APP_PATH}/upload/lin.jpg">
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
						&nbsp;&nbsp;&nbsp;&nbsp;Copyright <span style="font-family:Arial, Helvetica, sans-serif">&copy;</span>
						2018-
						<script type="text/javascript">
							var myDate = new Date();
							document.write(myDate.getFullYear());
						</script>
						中陶家居网 All Rights Reserved. 技术支持:中陶家居网
						&nbsp;&nbsp;&nbsp;&nbsp; 备案号:<a
							href="http://www.miitbeian.gov.cn/" rel="nofollow">粤ICP备12026978号-3</a>
					</div>
					<div class="ft_right"></div>
				</div>
			</div>
		</div>
</body>
</html>
