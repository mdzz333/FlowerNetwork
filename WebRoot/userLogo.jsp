<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script async charset="UTF-8" src="./账户信息_files/meiqia.js"></script><script src="./账户信息_files/uaredirect.js" type="text/javascript"></script>
<script type="text/javascript">uaredirect("/wap/index.php?act=member_information&op=member");</script>

<title> 账户信息 </title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta property="qc:admins" content="451153110760513015206375">
<meta property="wb:webmaster" content="a66e5b1a81063f36">
<meta property="qc:admins" content="4511531107605130152063757164506000">
<meta property="qc:admins" content="30423741676051301520637573070">

<style type="text/css">
body {
_behavior: url(http://huashi.hqskjy.com/shop/templates/default/css/csshover.htc);
}
</style>
<link rel="shortcut icon" href="http://huashi.hqskjy.com/favicon.ico">
<link href="css/base.css" rel="stylesheet" type="text/css">
<link href="css/home_header.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet">
<script>
    var COOKIE_PRE = '2754_';
    var _CHARSET = 'utf-8';
    var SITEURL = 'http://huashi.hqskjy.com/shop';
    var SHOP_SITE_URL = 'http://huashi.hqskjy.com/shop';
    var RESOURCE_SITE_URL = 'http://huashi.hqskjy.com/data/resource';
    var RESOURCE_SITE_URL = 'http://huashi.hqskjy.com/data/resource';
    var SHOP_TEMPLATES_URL = 'http://huashi.hqskjy.com/shop/templates/default';
</script>

<script src="js/jquery.js"></script>
<script src="js/common.js" charset="utf-8"></script>
<script src="js/jquery.ui.js"></script>
<script src="js/jquery.validation.min.js"></script>
<script src="js/jquery.masonry.js"></script>
<script src="js/dialog.js" id="dialog_js" charset="utf-8"></script><link href="css/dialog.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
var PRICE_FORMAT = '&yen;%s';

$(function(){
	//首页左侧分类菜单
	$(".category ul.menu").find("li").each(
		function() {
			$(this).hover(
				function() {
				    var cat_id = $(this).attr("cat_id");
					var menu = $(this).find("div[cat_menu_id='"+cat_id+"']");
					menu.show();
					$(this).addClass("hover");
					var menu_height = menu.height();
					if (menu_height < 60) menu.height(80);
					menu_height = menu.height();

					var li_top = $(this).position().top;
					$(menu).css("top",0);

				},
				function() {
					$(this).removeClass("hover");
				    var cat_id = $(this).attr("cat_id");
					$(this).find("div[cat_menu_id='"+cat_id+"']").hide();
				}
			);
		}
	);
	$(".head-user-menu dl").hover(function() {
		$(this).addClass("hover");
	},
	function() {
		$(this).removeClass("hover");
	});
	/*$('.head-user-menu .my-mall').mouseover(function(){// 最近浏览的商品
		load_history_information();
		$(this).unbind('mouseover');
	});*/
	$('.head-user-menu .my-cart').mouseover(function(){// 运行加载购物车
		load_cart_information();
		$(this).unbind('mouseover');
	});
	$('#button').click(function(){
	    if ($('#keyword').val() == '') {
		    return false;
	    }
	});

    });

$(function(){
	//search
	var act = "member_information";
    var $search_url = $("#search").children('ul');
	if (act == "store_list"){
        $search_url.children('li:eq(1)').addClass("current");
        $search_url.children('li:eq(0)').removeClass("current");
	}
    $search_url.children('li').click(function(){
		$(this).parent().children('li').removeClass("current");
		$(this).addClass("current");
		$('#search_act').attr("value",$(this).attr("act"));
		$('#keyword').attr("placeholder",$(this).attr("title"));
	});
	$("#keyword").blur();
	var cook = getCookie('v3_banner');
		/*if(cook){
		    $("#top-banner").hide();
		} else {
			$("#top-banner").slideDown(800);
		}
		$("#top-banner .close").click(function(){
			setCookie('v3_banner','yes',1);
			$("#top-banner").hide();
	});*/
});

</script>
</head>
<body>

<!-- PublicTopLayout Begin -->
 

<div class="public-top-layout w">
  <div class="topbar wrapper">
    <div class="user-entry">花市鲜花网-专注于网上订花11年,网上花店领先品牌.承诺1-3小时将鲜花快递上门！</div>
    <div class="quick-menu">
	 <!-- <dl>
        <dt><a href="index.php?act=invite">邀请返利</a></dt>
      </dl>-->
        <dl>
            <dt><a href="#" target="_blank"><label style="color:red;color:red;cursor: pointer;">订单查询</label></a></dt>
        </dl>
        <dl>
            <dt><a href="#" target="_blank">投诉建议</a></dt>
        </dl>
      <dl>
        <dt><a href="#">我的订单</a><i></i></dt>
        <dd>
          <ul>
            <li><a href="#">待付款订单</a></li>
            <li><a href="#">待确认收货</a></li>
            <li><a href="#">待评价交易</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt><a href="#">我的收藏</a><i></i></dt>
        <dd>
          <ul>
            <li><a href="#">商品收藏</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt>客户服务<i></i></dt>
        <dd>
          <ul>
            <li><a href="#">帮助中心</a></li>
            <li><a href="#">售后服务</a></li>
            <li><a href="#">客服中心</a></li>
          </ul>
        </dd>
      </dl>
          </div>
  </div>
</div>


<!-- 顶部广告展开效果-->
<div class="header-wrap">
  <header class="public-head-layout wrapper">
        <h1 class="site-logo">
                            <a href="#">
                    <img src="image/05166631110429063.jpg" class="pngFix">
                </a>
                    </h1>
          <div id="search" class="head-search-bar" style="margin-left:90px;">
	<!--商品和店铺-->
      <ul class="tab">
        <li title="请输入您要搜索的商品关键字" act="search" class="current">商品</li>
      </ul>

      <form class="search-form" method="get" action="http://huashi.hqskjy.com/list.jsp">
         <input placeholder="请输入您要搜索的商品关键字" name="keyword" id="keyword" type="text" class="input-text" value="" maxlength="60" x-webkit-speech="" lang="zh-CN" onwebkitspeechchange="foo()" x-webkit-grammar="builtin:search">
         <input type="submit" id="button" value="搜索" class="input-submit">
        </form>
	  <!--搜索关键字-->
      <div class="keyword">热门搜索：
        <ul>
          <li><a href="#">情人节</a></li><li><a href="#">玫瑰</a></li> <li><a href="#">百合</a></li><li><a href="#">蓝色妖姬</a></li> <li><a href="#">爱情</a></li><li><a href="#">花篮</a></li><li><a href="#">教师</a></li><li><a href="#">七夕</a></li>
        </ul>
      </div>
    </div>

    <div class="head-user-menu">
        <dl class="my-mall">
            <dt style="width: 120px;border: none;background-color: #fff;color:red;">
                <img src="image/tel.png">4009-670-677            </dt>
        </dl>
        <dl class="my-mall">
            <dt style="width: 110px;border: none;background-color: #fff;">
                <a href="javascript:void(0);" onclick="" target="_blank" style="color:red;">
                    <img src="image/kf.gif">&nbsp;在线客服
                </a>
            </dt>
        </dl>
      <dl class="my-cart">
        <!--
        <div class="addcart-goods-num"></div>
        -->        <dt><span class="ico"></span>购物车结算<i class="arrow"></i></dt>
        <dd>
          <div class="sub-title">
            <h4>最新加入的商品</h4>
          </div>
          <div class="incart-goods-box">
            <div class="incart-goods"> <img class="loading" src="image/loading.gif"> </div>
           </div>
          <div class="checkout"><span class="total-price">共<i>0</i>种商品</span><a href="http://huashi.hqskjy.com/shop/index.php?act=cart" class="btn-cart">结算购物车中的商品</a> </div>
        </dd>
      </dl>
    </div>
  </header>
</div>
<!-- PublicHeadLayout End -->
<!-- publicNavLayout Begin -->
<nav class="public-nav-layout">
  <div class="wrapper">
    <div class="all-category">
      

<div class="title"><i></i>
    <h3><a href="#">所有商品分类</a></h3>
</div>
<div class="category">
<ul class="menu">
<li cat_id="256" class="odd">
    <div class="class">
        <h4><a href="javascript:">鲜花用途</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="爱情鲜花">爱情鲜花</a>
                                        <a href="#" title="商务用花">商务用花</a>
                                        <a href="#" title="生日鲜花">生日鲜花</a>
                                        <a href="#" title="友情鲜花">友情鲜花</a>
                                        <a href="#.jsp" title="老师长辈">老师长辈</a>
                                        <a href="#" title="求婚婚庆">求婚婚庆</a>
                                        <a href="#" title="道歉鲜花">道歉鲜花</a>
                                        <a href="#" title="探病慰问">探病慰问</a>
                                        <a href="#" title="祝福庆贺">祝福庆贺</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="256" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">爱情鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">商务用花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">生日鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">友情鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">老师长辈</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">求婚婚庆</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">道歉鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">探病慰问</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">祝福庆贺</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="2" class="even">
    <div class="class">
        <h4><a href="javascript:">鲜花花材</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="玫瑰">玫瑰</a>
                                        <a href="#" title="百合">百合</a>
                                        <a href="#" title="向日葵">向日葵</a>
                                        <a href="#" title="康乃馨">康乃馨</a>
                                        <a href="#" title="郁金香">郁金香</a>
                                        <a href="#" title="扶郎">扶郎</a>
                                        <a href="#" title="马蹄莲">马蹄莲</a>
                                        <a href="#" title="满天星">满天星</a>
                                        <a href="#" title="百合+玫瑰">百合+玫瑰</a>
                                        <a href="#" title="玫瑰+康乃馨">玫瑰+康乃馨</a>
                                        <a href="#" title="康乃馨+百合">康乃馨+百合</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="2" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">玫瑰</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">百合</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">向日葵</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">康乃馨</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">郁金香</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">扶郎</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">马蹄莲</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">满天星</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">百合+玫瑰</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">玫瑰+康乃馨</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">康乃馨+百合</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="3" class="odd">
    <div class="class">
        <h4><a href="javascript:">鲜花价格</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="100-200元">100-200元</a>
                                        <a href="#" title="200-300元">200-300元</a>
                                        <a href="#" title="300-500元">300-500元</a>
                                        <a href="#" title="500-800元">500-800元</a>
                                        <a href="#" title="800元以上">800元以上</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="3" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">100-200元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">200-300元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">300-500元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">500-800元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">800元以上</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="1" class="even">
    <div class="class">
        <h4><a href="javascript:">对象订花</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="恋人">恋人</a>
                                        <a href="#" title="朋友">朋友</a>
                                        <a href="#" title="父母">父母</a>
                                        <a href="#" title="领导">领导</a>
                                        <a href="#" title="老师">老师</a>
                                        <a href="#" title="客户">客户</a>
                                        <a href="#" title="长辈">长辈</a>
                                        <a href="#" title="病人">病人</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="1" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">恋人</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">朋友</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">父母</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">领导</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">老师</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">客户</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">长辈</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">病人</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="308" class="odd">
    <div class="class">
        <h4><a href="javascript:">节日选花</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="七夕节">七夕节</a>
                                        <a href="#" title="情人节">情人节</a>
                                        <a href="#" title="妇女节">妇女节</a>
                                        <a href="#" title="母亲节">母亲节</a>
                                        <a href="#" title="光棍节">光棍节</a>
                                        <a href="#" title="圣诞节">圣诞节</a>
                                        <a href="#" title="中秋节">中秋节</a>
                                        <a href="#" title="感恩节">感恩节</a>
                                        <a href="#" title="父亲节">父亲节</a>
                                        <a href="#" title="教师节">教师节</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="308" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">七夕节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">情人节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">妇女节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">母亲节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">光棍节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">圣诞节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">中秋节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">感恩节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">父亲节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">教师节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="470" class="even">
    <div class="class">
        <h4><a href="javascript:">枝数订花</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="9枝">9枝</a>
                                        <a href="#" title="11枝">11枝</a>
                                        <a href="#" title="12枝">12枝</a>
                                        <a href="#" title="13枝">13枝</a>
                                        <a href="#" title="16枝">16枝</a>
                                        <a href="#" title="19枝">19枝</a>
                                        <a href="#" title="21枝">21枝</a>
                                        <a href="#" title="29枝">29枝</a>
                                        <a href="#" title="33枝">33枝</a>
                                        <a href="#" title="36枝">36枝</a>
                                        <a href="#" title="66枝">66枝</a>
                                        <a href="#" title="99枝">99枝</a>
                                        <a href="#" title="99以上">99以上</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="470" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">9枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">11枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">12枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">13枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">16枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">19枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">21枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">29枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">33枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">36枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">66枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">99枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">99以上</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="593" class="odd">
    <div class="class">
        <h4><a href="javascript:">类型订花</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="手捧花束">手捧花束</a>
                                        <a href="#" title="礼盒鲜花">礼盒鲜花</a>
                                        <a href="#" title="卡通花束">卡通花束</a>
                                        <a href="#" title="绿植发财树">绿植发财树</a>
                                        <a href="#" title="开业花篮">开业花篮</a>
                                        <a href="#" title="巧克力花束">巧克力花束</a>
                                        <a href="#" title="精美桌花">精美桌花</a>
                                        <a href="#" title="卡通花束">卡通花束</a>
                                        <a href="#" title="祭奠花篮">祭奠花篮</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="593" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">手捧花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">礼盒鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">卡通花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">绿植发财树</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">开业花篮</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">巧克力花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">精美桌花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">卡通花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">祭奠花篮</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="888" class="even">
    <div class="class">
        <h4><a href="javascript:">按颜色订花</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="红色">红色</a>
                                        <a href="#" title="粉色">粉色</a>
                                        <a href="#" title="紫色">紫色</a>
                                        <a href="#" title="黄色">黄色</a>
                                        <a href="#" title="白色">白色</a>
                                        <a href="#" title="蓝色">蓝色</a>
                                        <a href="#" title="香槟色">香槟色</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="888" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">红色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">粉色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">紫色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">黄色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">白色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">蓝色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">香槟色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
</ul>
</div>        </div>
    <ul class="site-menu">
      <li><a href="<c:url value="FindAllTypeServlet"/>">首页</a></li>
      <li><a href="<c:url value="ListAllServlet" />">全部鲜花</a></li>
      <li><a href="love.jsp" target="_blank">爱情鲜花</a></li>
      <li><a href="listBrmdate.jsp">生日鲜花</a></li>
      <li><a href="startFlower.jsp">开业花篮</a></li>
      <li><a href="grade.jsp" target="_blank">高端鲜花</a></li>
      <li><a href="tejia.jsp" target="_blank">特价鲜花<img src="image/discount.gif" style="position: absolute; top: 0px; z-index: auto; float: right; "></a></li>
    </ul>
  </div>
</nav><div class="nch-breadcrumb-layout">
    <div class="nch-breadcrumb wrapper"><i class="icon-home"></i>
            <span><a href="#">首页</a></span><span class="arrow">&gt;</span>
                <span><a href="#">我的商城</a></span><span class="arrow">&gt;</span>
                <span>账户信息</span>
          </div>
  </div>
<link href="css/member.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/member.js"></script>
<script type="text/javascript" src="js/ToolTip.js"></script><div id="toolTipLayer" style="position: absolute; z-index: 999; display: none; visibility: visible; left: 622px; top: 405px;"></div>
<script>
//sidebar-menu
$(document).ready(function() {
    $.each($(".side-menu > a"), function() {
        $(this).click(function() {
            var ulNode = $(this).next("ul");
            if (ulNode.css('display') == 'block') {
            	$.cookie(COOKIE_PRE+'Mmenu_'+$(this).attr('key'),1);
            } else {
            	$.cookie(COOKIE_PRE+'Mmenu_'+$(this).attr('key'),null);
            }
			ulNode.slideToggle();
				if ($(this).hasClass('shrink')) {
					$(this).removeClass('shrink');
				} else {
					$(this).addClass('shrink');
				}
        });
    });
	$.each($(".side-menu-quick > a"), function() {
        $(this).click(function() {
            var ulNode = $(this).next("ul");
			ulNode.slideToggle();
				if ($(this).hasClass('shrink')) {
					$(this).removeClass('shrink');
				} else {
					$(this).addClass('shrink');
				}
        });
    });
});
$(function() {
	//展开关闭常用菜单设置
	$('.set-btn').bind("click",
	function() {
		$(".set-container-arrow").show("fast");
		$(".set-container").show("fast");
	});
	$('[nctype="closeCommonOperations"]').bind("click",
	function() {
		$(".set-container-arrow").hide("fast");
		$(".set-container").hide("fast");
	});

    $('dl[nctype="checkcCommonOperations"]').find('input').click(function(){
        var _this = $(this);
        var _dd = _this.parents('dd:first');
        var _type = _this.is(':checked') ? 'add' : 'del';
        var _value = _this.attr('name');
        var _operations = $('[nctype="commonOperations"]');

        // 最多添加5个
        if (_operations.find('li').length >= 5 && _type == 'add') {
            showError('最多只能添加5个常用选项。');
            return false;
        }
        $.getJSON('http://huashi.hqskjy.com/index.php?act=member&op=common_operations', {type : _type, value : _value}, function(data){
            if (data) {
                if (_type == 'add') {
                    _dd.addClass('checked');
                    if (_operations.find('li').length == 0) {
                        _operations.fadeIn('slow');
                    }
                    _operations.find('ul').append('<li style="display : none;" nctype="' + _value + '"><a href="' + _this.attr('data-value') + '">' + _this.attr('data-name') + '</a></li>');
                    _operations.find('li[style]').fadeIn('slow');
                } else {
                    _dd.removeClass('checked');
                    _operations.find('li[nctype="' + _value + '"]').fadeOut('slow', function(){
                        $(this).remove();
                        if (_operations.find('li').length == 0) {
                            _operations.fadeOut('slow');
                        }
                    });
                }
            }
        });
    });
});

</script>
<div class="ncm-container">
  <div class="left-layout">
    <div class="ncm-l-top">
      <h2><a href="#" title="我的商城">我的商城</a></h2>
      <a href="javascript:void(0)" title="常用菜单设置" class="set-btn"></a>
      <div class="set-container-arrow1" style="display:none;"></div>
      <div class="set-container1" style="display:none;">
        <div class="title">
          <h3>常用菜单设置</h3>
          <a href="javascript:void(0)" title="关闭" class="close-btn close-container" nctype="closeCommonOperations"></a></div>
        <div class="tip">勾选您经常使用的菜单，最多可选5个。 </div>
        <div class="menu-list">
                              <dl class="collapsed" nctype="checkcCommonOperations">
            <dt>交易管理</dt>
                                    <dd>
              <label>
                <input name="member_order" data-value="#" data-name="订单列表" type="checkbox" class="checkbox">
                订单列表</label>
            </dd>
                        <dd>
              <label>
                <input name="member_favorites" data-value="#" data-name="我的收藏" type="checkbox" class="checkbox">
                我的收藏</label>
            </dd>
                        <dd>
              <label>
                <input name="member_evaluate" data-value="#" data-name="交易评价/晒单" type="checkbox" class="checkbox">
                交易评价/晒单</label>
            </dd>
                                  </dl>
                    <dl class="collapsed" nctype="checkcCommonOperations">
            <dt>资料管理</dt>
                                    <dd>
              <label>
                <input name="member_information" data-value="#" data-name="账户信息" type="checkbox" class="checkbox">
                账户信息</label>
            </dd>
                        <dd>
              <label>
                <input name="member_security" data-value="#" data-name="账户安全" type="checkbox" class="checkbox">
                账户安全</label>
            </dd>
                        <dd>
              <label>
                <input name="member_address" data-value="#" data-name="收货地址" type="checkbox" class="checkbox">
                收货地址</label>
            </dd>
                                  </dl>
                            </div>
        <div class="bottom">
          <input type="submit" value="确定" class="setting" nctype="closeCommonOperations">
        </div>
      </div>
    </div>
    <div class="ncm-user-info">
      <div class="avatar"><img src="image/default_user_portrait.gif">
        <div class="frame"></div>
              </div>
      <div class="handle"><a href="#" title="修改头像"><i class="icon-camera"></i>修改头像</a><a href="userInfo.jsp" title="修改资料"><i class="icon-pencil"></i>修改资料</a><a href="<c:url value="ExitServlet"/>" title="安全退出"><i class="icon-off"></i>安全退出</a></div>
      <div class="name">${loginUser.usLoginName}&nbsp;
                <div class="nc-grade-mini" style="cursor:pointer;" onclick="">V0</div>
              </div>
    </div>
    <ul class="ncm-sidebar ncm-quick-menu">
      <li class="side-menu-quick" nctype="commonOperations" style="display: none;"> <a href="javascript:void(0)">
        <h3>常用操作</h3>
        </a>
        <ul>
                  </ul>
      </li>
    </ul>
    <ul id="sidebarMenu" class="ncm-sidebar">
                  <li class="side-menu"><a href="javascript:void(0)" key="trade">
        <h3>交易管理</h3>
        </a>
                <ul>
                    <li class="selected"><a href="<c:url value="SelectOrdersByUsers"/>">订单列表</a></li>
                    <li><a href="<c:url value="GetCollServlet"/>">我的收藏</a></li>
                    <li><a href="#">交易评价/晒单</a></li>
                  </ul>
              </li>
            <li class="side-menu"><a href="javascript:void(0)" key="info">
        <h3>资料管理</h3>
        </a>
                <ul>
                    <li><a href="userInfo.jsp">账户信息</a></li>
                    <li><a href="userPwd.jsp">账户安全</a></li>
                    <li><a href="selfAddres.jsp">收货地址</a></li>
                  </ul>
              </li>
                </ul>
  </div>
  
  <div style="width:980px; height:500px; display:none; float:left; background-color:#000;">

</div>
  <div class="right-layout">
    <link rel="stylesheet" type="text/css" href="css/jquery.ui.css">


<script src="js/logo.js"></script>


<div class="wrap" style="display:none;" id="slogo">
  <div class="tabmenu">
    <ul class="tab pngFix">
  <li class="active"><a href="#">基本信息</a></li><li class="normal"><a href="#" id="dianshow">更换头像</a></li></ul>
  </div>
  <div class="ncm-user-profile">
    <div class="user-avatar"><span><img src="image/default_user_portrait.gif"></span></div>
    <div class="ncm-default-form fr">
      <form method="post" id="profile_form" action="http://huashi.hqskjy.com/index.php?act=member_information&amp;op=member">
        <input type="hidden" name="form_submit" value="ok">
        <input type="hidden" name="old_member_avatar" value="">
        <dl>
          <dt>用户名称：</dt>
          <dd>
              <span class="w400">${loginUser. usLoginName}&nbsp;&nbsp;
                            <div class="nc-grade-mini" style="cursor:pointer;" onclick="">V0</div>
                            </span>
              <span>&nbsp;&nbsp;隐私设置</span>
         </dd>
        </dl>
        <dl>
          <dt>邮箱：</dt>
          <dd><span class="w400">${loginUser.email}&nbsp;&nbsp;
                        <a href="#">绑定邮箱</a>
            </span><span>
            <select name="privacy[email]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="2">保密</option>
            </select>
            </span>
          </dd>
        </dl>
        <dl>
          <dt>真实姓名：</dt>
          <dd><span class="w400">
            <input type="text" class="text" maxlength="20" name="member_truename" value="">
            </span><span>
            <select name="privacy[truename]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="2">保密</option>
            </select>
            </span></dd>
        </dl>
        <dl>
          <dt>性别：</dt>
          <dd><span class="w400">
            <label>
              <input type="radio" name="member_sex" value="3" checked="checked">
              保密</label>
            &nbsp;&nbsp;
            <label>
              <input type="radio" name="member_sex" value="2">
              女</label>
            &nbsp;&nbsp;
            <label>
              <input type="radio" name="member_sex" value="1">
              男</label>
            </span><span>
            <select name="privacy[sex]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="2">保密</option>
            </select>
            </span></dd>
        </dl>
        <dl>
          <dt>生日：</dt>
          <dd><span class="w400">
            <input type="text" class="text hasDatepicker" name="birthday" maxlength="10" id="birthday" value="" readonly>
            </span><span>
            <select name="privacy[birthday]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="2">保密</option>
            </select>
            </span></dd>
        </dl>
        <dl>
          <dt>所在地区：</dt>
          <dd><span id="region" class="w400">
            <input type="hidden" value="" name="province_id" id="province_id">
            <input type="hidden" value="" name="city_id" id="city_id">
            <input type="hidden" value="" name="area_id" id="area_id" class="area_ids">
            <input type="hidden" value="" name="area_info" id="area_info" class="area_names">
                        <select>
            <option>-请选择-</option><option value="1">北京</option><option value="2">天津</option><option value="3">河北</option><option value="4">山西</option><option value="5">内蒙古</option><option value="6">辽宁</option><option value="7">吉林</option><option value="8">黑龙江</option><option value="9">上海</option><option value="10">江苏</option><option value="11">浙江</option><option value="12">安徽</option><option value="13">福建</option><option value="14">江西</option><option value="15">山东</option><option value="16">河南</option><option value="17">湖北</option><option value="18">湖南</option><option value="19">广东</option><option value="20">广西</option><option value="21">海南</option><option value="22">重庆</option><option value="23">四川</option><option value="24">贵州</option><option value="25">云南</option><option value="26">西藏</option><option value="27">陕西</option><option value="28">甘肃</option><option value="29">青海</option><option value="30">宁夏</option><option value="31">新疆</option><option value="32">台湾</option><option value="33">香港</option><option value="34">澳门</option><option value="35">海外</option></select>
                        </span><span>
            <select name="privacy[area]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="2">保密</option>
            </select>
            </span></dd>
        </dl>
        <dl>
          <dt>QQ：</dt>
          <dd><span class="w400">
            <input type="text" class="text" maxlength="30" name="member_qq" value="">
            </span><span>
            <select name="privacy[qq]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="2">保密</option>
            </select>
            </span> </dd>
        </dl>
        <dl>
          <dt>阿里旺旺：</dt>
          <dd><span class="w400">
            <input name="member_ww" type="text" class="text" maxlength="50" id="member_ww" value="">
            </span><span>
            <select name="privacy[ww]">
              <option value="0" selected="selected">公开</option>
              <option value="1">好友可见</option>
              <option value="2">保密</option>
            </select>
            </span></dd>
        </dl>
        <dl class="bottom">
          <dt></dt>
          <dd>
            <label class="submit-border">
              <input type="submit" class="submit" value="保存修改">
            </label>
          </dd>
        </dl>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/common_select.js" charset="utf-8"></script> 
<script type="text/javascript">
//注册表单验证
$(function(){
	regionInit("region");
	$('#birthday').datepicker({dateFormat: 'yy-mm-dd'});
    $('#profile_form').validate({
    	submitHandler:function(form){
    		if ($('select[class="valid"]').eq(0).val()>0) $('#province_id').val($('select[class="valid"]').eq(0).val());
			if ($('select[class="valid"]').eq(1).val()>0) $('#city_id').val($('select[class="valid"]').eq(1).val());
			ajaxpost('profile_form', '', '', 'onerror')
		},
        rules : {
            member_truename : {
				minlength : 2,
                maxlength : 20
            },
            member_qq : {
				digits  : true,
                minlength : 5,
                maxlength : 12
            }
        },
        messages : {
            member_truename : {
				minlength : '姓名长度大于等于2位小于等于20位',
                maxlength : '姓名长度大于等于2位小于等于20位'
            },
            member_qq  : {
				digits    : '请填入正确的QQ号码',
                minlength : '请填入正确的QQ号码',
                maxlength : '请填入正确的QQ号码'
            }
        }
    });
});
</script> 
<script charset="utf-8" type="text/javascript" src="js/zh-CN.js"></script>  </div>
  
  
  
  <div class="wrap" style="display:block; float:left; margin-left:15px;" id="tuo">
  <div class="tabmenu">
    <ul class="tab pngFix">
  <li class="normal"><a href="#" id="dianxin">基本信息</a></li><li class="active"><a href="#">更换头像</a></li></ul>
  </div>
    <form action="#d" enctype="multipart/form-data" id="form_avaster" method="post">
    <input type="hidden" name="form_submit" value="ok">
    <div class="ncm-default-form">
      <dl>
        <dt>头像预览：</dt>
        <dd>
          <div class="user-avatar" style="width:150px; height:150px;"><img src="image/default_user_portrait.gif" width="150" width="150" ></div>
          <p class="hint mt5">完善个人信息资料，上传头像图片有助于您结识更多的朋友。<br><span style="color:orange;">头像默认尺寸为120x120像素，请根据系统操作提示进行裁剪并生效。</span></p>
        </dd>
      </dl>
      <dl>
        <dt>更换头像：</dt>
        <dd>
          <div class="ncm-upload-btn"> <a href="javascript:void(0);" ><span>
            <input type="file" hidefocus="true" size="1" class="input-file" name="pic" id="pic" file_id="0" multiple maxlength="0">
            </span>
            <p><i class="icon-upload-alt"></i>图片上传</p>
            <input id="submit_button" style="display:none" type="button" value=" " onclick="submit_form($(this))">
            </a> </div>
        </dd>
      </dl>
    </div>
  </form>
  </div>
<script type="text/javascript">
$(function(){
	$('#pic').change(function(){
		var filepatd=$(this).val();
		var extStart=filepatd.lastIndexOf(".");
		var ext=filepatd.substring(extStart,filepatd.lengtd).toUpperCase();
		if(ext!=".PNG"&&ext!=".GIF"&&ext!=".JPG"&&ext!=".JPEG"){
			alert("文件类型错误，请选择图片文件（png|gif|jpg|jpeg）");
			$(this).attr('value','');
			return false;
		}
		if ($(this).val() == '') return false;
		$("#form_avaster").submit();
	});
});
</script>  </div>
  
  
  
</div>










<div id="faq">
    <div class="faq-wrapper">
        <ul>
            <li> <dl class="s1">
                    <dt>
                        购物指南      </dt>
                    <dd><i></i><a href="#" title="品牌服务"> 品牌服务 </a></dd>
                    <dd><i></i><a href="#" title="购物流程"> 购物流程 </a></dd>
                    <dd><i></i><a href="#" title="订购必读"> 订购必读 </a></dd>
                    <dd><i></i><a href="#" title="VIP会员"> VIP会员 </a></dd>
                </dl></li>
            <li> <dl class="s2">
                    <dt>
                        支付方式      </dt>
                    <dd><i></i><a href="#" title="在线支付"> 在线支付 </a></dd>
                    <dd><i></i><a href="#" title="发票说明"> 发票说明 </a></dd>
                    <dd><i></i><a href="#" title="银行转账说明"> 银行转账说明 </a></dd>
                    <dd><i></i><a href="#" title="货到付款及要求"> 货到付款及要求 </a></dd>
                </dl></li>
            <li> <dl class="s3">
                    <dt>
                        配送方式      </dt>
                    <dd><i></i><a href="#" title="配送范围"> 配送范围 </a></dd>
                    <dd><i></i><a href="#" title="鲜花定时配送"> 鲜花定时配送 </a></dd>
                    <dd><i></i><a href="#" title="配送说明"> 配送说明 </a></dd>
                    <dd><i></i><a href="#" title="配送费用收取标准"> 配送费用收取标准 </a></dd>
                </dl></li>
            <li> <dl class="s4">
                    <dt>
                        售后服务      </dt>
                    <dd><i></i><a href="#" title="订单处理"> 订单处理 </a></dd>
                    <dd><i></i><a href="#" title="在线支付"> 在线支付 </a></dd>
                    <dd><i></i><a href="#" title="投诉处理规范"> 投诉处理规范 </a></dd>
                    <dd><i></i><a href="#" title="订单查询及撤销"> 订单查询及撤销 </a></dd>
                    <dd><i></i><a href="#" title="修改订单信息说明"> 修改订单信息说明 </a></dd>
                </dl></li>
            <li> <dl class="s5">
                    <dt>
                        相关知识      </dt>
                    <dd><i></i><a href="#l" title="鲜花枝数寓意"> 鲜花枝数寓意 </a></dd>
                    <dd><i></i><a href="#" title="浪漫花语"> 浪漫花语 </a></dd>
                    <dd><i></i><a href="#" title="节日送花寓意"> 节日送花寓意 </a></dd>
                    <dd><i></i><a href="#" title="蛋糕尺寸"> 蛋糕尺寸 </a></dd>
                </dl></li>
            <li> <dl class="s6">
                    <dt>
                        帮助中心      </dt>
                    <dd><i></i><a href="#" title="关于我们"> 关于我们 </a></dd>
                    <dd><i></i><a href="#" title="联系我们"> 联系我们 </a></dd>
                    <dd><i></i><a href="#" title="安全条款"> 安全条款 </a></dd>
                    <dd><i></i><a href="#" title="隐私保护"> 隐私保护 </a></dd>
                    <dd><i></i><a href="#" title="常见问题"> 常见问题 </a></dd>
                </dl></li>
        </ul>
        <div class="help">
            <div class="w1190 clearfix">
                <div class="contact f-l">
                    <div class="contact-border clearfix">
                        <div style="width:40%;float:left;">
                            <div style="width:100%;height:25%;margin-top:6px;">
                                <label>花店经营时间</label>
                            </div>
                            <div style="width:100%;height:25%;margin-top:6px;">
                                <label>9:00~20:00</label>
                            </div>
                            <div style="width:100%;height:25%;margin-top:6px;">
                                <label>花店留言回复时间</label>
                            </div>
                            <div style="width:100%;height:25%;margin-top:6px;">
                                <label>9:00~22:00</label>
                            </div>
                        </div>
                        <div style="width:60%;float:right;">
                            <div style="width:100%;height:25%;margin-top:6px;">
                                <label>花店服务热线（免长途费）</label>
                            </div>
                            <div style="width:100%;height:25%;margin-top:6px;">
                                <span class="ic tel t20">4009-670-677</span>
                            </div>
                            <!--<div style="width:100%;height:25%;margin-top:6px;">
                                <label>花店QQ在线</label>
                            </div>
                            <div style="width:100%;height:25%;margin-top:6px;">
                                                            <span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes" title="QQ: "><img border="0" src="http://wpa.qq.com/pa?p=2::52" style=" vertical-align: middle;"/></a></span>
                                                                                    <span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes" title="QQ: "><img border="0" src="http://wpa.qq.com/pa?p=2::52" style=" vertical-align: middle;"/></a></span>

                                                        </div>-->
                        </div>
                        <!--
                        <span class="ic tel t20"></span>
                        <span class="ic mail"></span>
                        <div class="attention cleafix">
                            <div class="weixin f-l">
                                <img src="" class="f-l jImg img-error">
                                   <p class="f-l">
                                    <span>扫一扫</span>
                                    <span>关注我们</span>
                                </p>
                            </div>
                            <div class="weibo f-l">
                                <div class="ic qq" style="padding-left: 0px;"></div>
                                <div class="ic sina" style="padding-left: 0px;"></div>
                            </div>
                        </div>
                        -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="footer" class="wrapper">
  <!--<p><a href=""></a>
                                    | <a  target="_blank" href=""></a>
                          </p>-->
    <p><a href="#">首页</a>
        | <a href="#">购物指南</a>
        | <a href="#">支付方式</a>
        | <a href="#">配送方式</a>
        | <a href="#">售后服务</a>
        | <a href="#">相关知识</a>
        | <a href="#">帮助中心</a>
    </p>
        Copyright 2017 Copyright© 2005-2017 中网慧谷网络科技（北京）有限公司 版权所有，并保留所有权利。 All rights reserved
              <br>
    </div>


</body></html>