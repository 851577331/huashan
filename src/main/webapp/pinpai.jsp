<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<title>${requestScope.byid}年品牌榜</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="陶瓷十大品牌,瓷砖十大品牌,陶瓷一线品牌,瓷片十大品牌,中国十大陶瓷品牌,佛山陶瓷十大品牌,佛山制造">
<meta http-equiv="description" content="陶瓷十大品牌有哪些！自2011年成立以来，中陶家居网坚持以“公平、公正、公开”的原则，联国家相关建材行业协会，发布行业年度优秀品牌榜，推动我国建筑卫生陶瓷行业民族品牌快速成长，走向世界。">
<meta name="viewport" content="width=1200" />
<link href="${APP_PATH}/CSS/Style.css" rel="stylesheet" type="text/css" />

<style>
.daohangtiao{ width:1200px; margin:0 auto;background-color:2474bd;margin-top:10px}
.daohangtiao ul{text-align: center;width:1200px;}
.daohangtiao ul li{float: left;margin: 12px 2px 0 5px;width:190px;height:40px;border:1px solid #808a87;margin-bottom:10px;}
.daohangtiao ul li a{height: 15px;line-height: 40px;font-size: 15px;font-weight: bold; color:#fff;}
.daohangtiao ul li a h2{font-size:16px;}
.xiangguang {width:1180px;height:115px;overflow:hidden; margin:0 auto; background:#f6f6f6;margin-top:30px;padding:15px 0px 20px 20px}
.xgwz span{ font-size:17px;float:left;}
.artic {float:right;width:1180px;margin:15px 0px;}
.artic a{height:30px; line-height:30px; font-size:14px; display:block; float:left; width:280px;}
.lk { background:#e8e8e8; margin-top:20px; margin-bottom:20px;}
.lk-left span{ width:127px; height:100px;float:left;border-right:1px solid #ddd;font-size:18px; margin:15px 0px; padding:40px 20px 0px 0px;display:block;text-align:right;line-height:30px;}
.lk-rt {float:right;width:1040px;height:150px;margin:15px 0px;}
.lk-rt a{height:30px; line-height:30px; font-size:14px; display:block; float:left; width:137px;}
</style>
</head>

<body>


<div class="topbg">
<div style="width:1200px; margin:0 auto; background:#f6f6f6;">
<div class="top wapper">

<h1><span>您好，欢迎光临<font>中陶家居网</font>！</span></h1>
</div>
</div>
</div>

  <div class="head wapper">
    <div class="logo">
      <h1 style="    display: block;float: left;" ><a href="http://pinpai.zhongtaojiaju.com/" title="陶瓷十大品牌榜" ><img src='http://www.zhongtaojiaju.com/upload/image/20180703/201807030945298715.jpg' alt='中陶家居网' /></a></h1>
    </div>
  </div>
  <div class="menubg">
    <div style="width:1200px; margin:0 auto; background:#2373bc;">
      <div class="menu wapper">
        <ul>
          <li ><h2><span>
            <a  href="http://www.zhongtaojiaju.com/" target="_blank" title="首页"  >首页</a>
            </span></h2>
            <dl>
            </dl>
          </li>
          <li> <h2><span>
            <a  href="http://www.zhongtaojiaju.com/redian/" target="_blank" title="热点头条"  >热点头条</a>
            </span></h2>
            <dl>
            </dl>
          </li>
          <li><h2> <span>
            <a  href="http://www.zhongtaojiaju.com/newscenter/" target="_blank" title="新闻中心"  >新闻中心</a>
            </span></h2>
            <dl>
            </dl>
          </li>
          <li><h2> <span>
            <a  href="http://pinpai.zhongtaojiaju.com/" target="_blank" title="品牌中心 TOP10"  >品牌中心 TOP10</a>
            </span></h2>
            <dl>
            </dl>
          </li>
          <li><h2> <span>
            <a  href="http://www.zhongtaojiaju.com/chanyeshuju" target="_blank" title="产业数据中心"  >产业数据中心</a>
            </span></h2>
            <dl>
            </dl>
          </li>
          <li><h2> <span>
            <a  href="http://www.zhongtaojiaju.com/jingxiaoshang" target="_blank" title="经销商数据库"  >经销商数据库</a>
            </span></h2>
            <dl>
            </dl>
          </li>
          <li><h2> <span>
            <a  href="http://www.zhongtaojiaju.com/taoweibao" target="_blank" title="陶卫宝"  >陶卫宝</a>
            </span></h2>
            <dl>
            </dl>
          </li>
          <li><h2> <span>
            <a  href="http://ccchome123.zhongtaojiaju.com/" target="_blank" title="家居123" rel="nofollow" >家居123</a>
            </span></h2>
            <dl>
            </dl>
          </li>
        </ul>
      </div>
    </div>
  </div>
		
        <div class="daohangtiao">
            <ul>
            <c:forEach items="${Billboard}" var="t">
                <li><h2><a href="${APP_PATH}/pinpailist/${t.bid}/${t.byid}">${t.pname}</a></h2></li> 
            	</c:forEach>
            </ul>
            <div class="clear">
            </div>
        </div>
	

  
  
  <div class="pinpai wapper" id="pinpai" >
    <div class="YearH" >
    <b style=""><a href="${APP_PATH}/pinpai">2019年陶瓷榜</a></b>
    <b style=""><a href="${APP_PATH}/pinpai/2018">2018年陶瓷榜</a></b>
    <b style=""><a href="${APP_PATH}/pinpai/2017">2017年陶瓷榜</a></b>
    <div style="font-size:14px;" >
		<h3><span style="color: Red; padding-right: 10px;">
               陶瓷十大品牌</span>中国建筑卫生陶瓷品牌榜TOP10，是中国建筑材料流通协会和中陶家居网主办的年度类
               我国建筑卫生陶瓷年度品牌盛会，助推我国民族品牌的成长和国际化；品牌榜创办于2012年，主要荣誉包括陶
               瓷十大品牌、瓷砖十大品牌、陶瓷一线品牌、现代仿古砖十大品牌、大理石瓷砖十大品牌、现代瓷砖十大品牌、
               瓷片十大品牌、设计师推荐品牌、工程瓷砖推荐品牌、抛光砖十大品牌、产品金匠奖、陶瓷行业新锐品牌等，品
               牌榜同期举办全国陶瓷卫浴经销商大会，成为陶瓷卫浴行业年度热门关注的陶瓷卫浴“行业两会”。目前揭晓的是
       	${requestScope.byid}年度中国建筑卫生陶瓷品牌榜。</h3>
      </div>
    </div>
    <c:forEach items="${Billboard}" var="b">
    <div class="p_tit"> <h2>
            · ${b.pname}<span hidden>${b.bid}</span>
           </h2>
      <b style="color:red;font-size:18px;padding-left:10px;" >TOP10</b>
    </div>
    	<ul>
    	<c:forEach items="${Brand}" var="p">
    	<c:if test="${b.bid==p.hid}">
    	<span hidden>${p.hid}</span>
            <li><a href="${APP_PATH}/pinpaidetail/${p.pid}"><img src="${APP_PATH }/${p.img}" alt="${p.alt}" /></a> 
            <span><a href="${APP_PATH}/pinpaidetail/${p.pid}" title="${p.weit}">${p.title}</a></span>
            </li>
            </c:if>
         </c:forEach>
			<div class="clear">
            </div>
    	</ul>
	</c:forEach>
  </div>
  <div class="xiangguang">
     <div class="xgwz">
     <a href="${APP_PATH}/moreNews" target="_blank" ><span >品牌榜相关文章</span></a>
     <a href="${APP_PATH}/moreNews" target="_blank" style="float:right;padding-right:60px;" rel="nofollow">更多+</a>
     </div>
     <div class="artic">
     <c:forEach items="#{n}" var="n">
      <a href="${APP_PATH}/newsdetail/${n.nid}" target="_blank" title="${n.weit}">${n.title}</a> 
      </c:forEach>
     </div>
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
						
						Copyright <span style="font-family:Arial, Helvetica, sans-serif">&copy;</span>
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
