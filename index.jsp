<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">

<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="description" content="ZJ商城首页">

  <title>首页 - ZJ商城</title>

  <link href="static/css/amazeui.css" rel="stylesheet" type="text/css" />
  <link href="static/css/admin.css" rel="stylesheet" type="text/css" />
  <link href="static/css/demo.css" rel="stylesheet" type="text/css" />
  <link href="static/css/hmstyle.css" rel="stylesheet" type="text/css" />
  <link href="static/css/skin.css" rel="stylesheet" type="text/css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
  
  <script src="static/js/jquery.min.js"></script>
  <script src="static/js/amazeui.min.js"></script>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen', sans-serif;
      background-color: #f8f9fa;
      color: #333;
    }

    /* ============ 顶部条 ============ */
    .hmtop {
      background: linear-gradient(90deg, #ff6b6b 0%, #ee5a52 100%);
      color: white;
      padding: 0;
    }

    .hmtop .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 20px;
      max-width: 1200px;
      margin: 0 auto;
    }

    .topMessage {
      display: inline-block;
    }

    .menu-hd a {
      color: white;
      text-decoration: none;
      margin-right: 20px;
      font-size: 12px;
      transition: all 0.3s;
      display: inline-block;
    }

    .menu-hd a:hover {
      opacity: 0.8;
      transform: scale(1.05);
    }

    .menu-hd a.h {
      font-weight: bold;
    }

    /* ============ 导航栏 ============ */
    .nav {
      background: white;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      padding: 15px 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      max-width: 1200px;
      margin: 0 auto;
      gap: 20px;
    }

    .logoBig img {
      height: 50px;
      object-fit: contain;
      transition: transform 0.3s;
    }

    .logoBig:hover img {
      transform: scale(1.05);
    }

    .search-bar {
      flex: 1;
      max-width: 500px;
    }

    .search-bar form {
      display: flex;
      border: 2px solid #ff6b6b;
      border-radius: 6px;
      overflow: hidden;
      background: white;
    }

    .search-bar input {
      flex: 1;
      border: none;
      padding: 10px 15px;
      outline: none;
      font-size: 14px;
    }

    .search-bar .submit {
      background: #ff6b6b;
      color: white;
      border: none;
      padding: 10px 25px;
      cursor: pointer;
      font-weight: bold;
      transition: all 0.3s;
    }

    .search-bar .submit:hover {
      background: #ee5a52;
      transform: scale(1.02);
    }

    /* ============ 轮播图 ============ */
    .banner {
      background: white;
      margin: 20px auto;
      max-width: 1200px;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .am-slider {
      box-shadow: inset 0 0 0 1px transparent;
    }

    .am-slides {
      list-style: none;
    }

    .am-slides li {
      overflow: hidden;
    }

    .am-slides img {
      width: 100%;
      height: 400px;
      object-fit: cover;
      display: block;
      transition: transform 0.3s;
    }

    .am-slides li:hover img {
      transform: scale(1.02);
    }

    .clear {
      clear: both;
    }

    /* ============ 导航分类 ============ */
    .shopNav {
      background: white;
      margin: 20px auto;
      max-width: 1200px;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      overflow: hidden;
    }

    .slideall {
      padding: 20px;
    }

    .long-title {
      padding: 15px 0;
      border-bottom: 2px solid #ff6b6b;
      margin-bottom: 20px;
    }

    .all-goods {
      font-size: 18px;
      font-weight: bold;
      color: #333;
      display: inline-block;
      padding: 5px 15px;
      background: linear-gradient(90deg, #ff6b6b 0%, #ee5a52 100%);
      color: white;
      border-radius: 6px;
    }

    .nav-cont ul {
      list-style: none;
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      margin-bottom: 20px;
    }

    .nav-cont a {
      color: #666;
      text-decoration: none;
      font-size: 14px;
      padding: 8px 16px;
      border-radius: 6px;
      transition: all 0.3s;
      background: #f9f9f9;
    }

    .nav-cont a:hover {
      color: white;
      background: #ff6b6b;
      transform: translateY(-2px);
    }

    /* ============ 分类悬浮菜单 ============ */
    .navfull {
      display: none;
      position: absolute;
      background: white;
      border-radius: 8px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.15);
      margin-top: 10px;
      z-index: 999;
    }

    .category-list li:hover .navfull {
      display: block;
    }

    .category-info {
      padding: 15px;
      cursor: pointer;
      transition: all 0.3s;
      border-bottom: 1px solid #f0f0f0;
    }

    .category-info:hover {
      background: #fff3f1;
      padding-left: 20px;
    }

    .category-name {
      font-size: 14px;
      font-weight: bold;
      color: #333;
      margin: 0;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .category-name img {
      width: 28px;
      height: 28px;
      object-fit: contain;
    }

    .category-name em {
      margin-left: auto;
      color: #999;
    }

    /* ============ 小导航 ============ */
    .smallnav {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 15px;
      margin: 30px 0;
      padding: 0 !important;
    }

    .smallnav > div {
      border-radius: 8px;
      overflow: hidden;
      background: white;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      transition: all 0.3s;
    }

    .smallnav a {
      display: block;
      text-decoration: none;
      height: 100%;
      position: relative;
      overflow: hidden;
    }

    .smallnav img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      transition: transform 0.3s;
    }

    .smallnav .title {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      background: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 100%);
      color: white;
      padding: 20px 15px 15px;
      font-weight: bold;
      font-size: 14px;
      text-align: center;
      transition: all 0.3s;
    }

    .smallnav > div:hover {
      transform: translateY(-8px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }

    .smallnav > div:hover img {
      transform: scale(1.05);
    }

    /* ============ 商城头条 ============ */
    .marqueen {
      background: white;
      border-radius: 8px;
      padding: 20px;
      margin: 20px 0;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    .marqueen-title {
      display: inline-block;
      background: linear-gradient(90deg, #ff6b6b 0%, #ee5a52 100%);
      color: white;
      padding: 8px 16px;
      border-radius: 6px;
      font-weight: bold;
      margin-bottom: 15px;
      font-size: 14px;
    }

    .marqueen ul {
      list-style: none;
    }

    .marqueen li {
      padding: 10px;
      border-bottom: 1px solid #f0f0f0;
      transition: all 0.3s;
    }

    .marqueen li:last-child {
      border-bottom: none;
    }

    .marqueen a {
      color: #666;
      text-decoration: none;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 10px;
      transition: all 0.3s;
    }

    .marqueen a:hover {
      color: #ff6b6b;
      padding-left: 5px;
    }

    .marqueen span {
      background: #ff6b6b;
      color: white;
      padding: 2px 8px;
      border-radius: 4px;
      font-size: 11px;
      font-weight: bold;
      white-space: nowrap;
    }

    .marqueen img {
      width: 50px;
      height: 50px;
      border-radius: 4px;
      object-fit: cover;
    }

    /* ============ VIP 用户信息 ============ */
    .mod-vip {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      border-radius: 8px;
      padding: 20px;
      color: white;
      margin: 20px 0;
    }

    .m-baseinfo {
      display: flex;
      align-items: center;
      gap: 15px;
      margin-bottom: 15px;
    }

    .m-baseinfo img {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      object-fit: cover;
      border: 3px solid white;
    }

    .m-baseinfo em {
      font-style: normal;
      font-size: 14px;
      flex: 1;
    }

    .s-name {
      font-weight: bold;
      font-size: 16px;
    }

    .m-baseinfo a {
      color: white;
      text-decoration: none;
      font-size: 12px;
      opacity: 0.9;
      transition: opacity 0.3s;
    }

    .m-baseinfo a:hover {
      opacity: 1;
    }

    .member-logout {
      display: flex;
      gap: 10px;
      margin-bottom: 15px;
    }

    .member-logout .btn {
      flex: 1;
      padding: 10px;
      border: 2px solid white;
      border-radius: 6px;
      background: transparent;
      color: white;
      cursor: pointer;
      font-weight: bold;
      transition: all 0.3s;
    }

    .member-logout .btn:hover {
      background: white;
      color: #667eea;
    }

    .member-login {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 10px;
    }

    .member-login a {
      text-align: center;
      padding: 10px;
      background: rgba(255,255,255,0.2);
      border-radius: 6px;
      color: white;
      text-decoration: none;
      transition: all 0.3s;
    }

    .member-login a:hover {
      background: white;
      color: #667eea;
    }

    .member-login strong {
      display: block;
      font-size: 18px;
      margin-bottom: 5px;
    }

    /* ============ 响应式 ============ */
    @media (max-width: 768px) {
      .hmtop .header {
        flex-direction: column;
        gap: 10px;
        text-align: center;
      }

      .nav {
        flex-direction: column;
      }

      .search-bar {
        max-width: 100%;
      }

      .smallnav {
        grid-template-columns: repeat(2, 1fr);
      }

      .member-login {
        grid-template-columns: repeat(2, 1fr);
      }

      .am-slides img {
        height: 250px;
      }

      .nav-cont ul {
        flex-direction: column;
        gap: 10px;
      }
    }

    @media (max-width: 480px) {
      .smallnav {
        grid-template-columns: 1fr;
      }

      .nav {
        padding: 10px;
        gap: 10px;
      }

      .search-bar form {
        flex-direction: column;
      }

      .search-bar input,
      .search-bar .submit {
        width: 100%;
      }

      .member-login {
        grid-template-columns: 1fr;
      }

      .m-baseinfo {
        flex-direction: column;
        text-align: center;
      }
    }
  </style>
</head>

<body>
  <!-- 顶部导航条 -->
  <div class="hmtop">
    <div class="header">
      <ul class="message-l">
        <div class="topMessage">
          <div class="menu-hd">
            <a href="login.html" target="_top" class="h"><i class="fas fa-user"></i> 亲，请登录</a>
            <a href="register.html" target="_top"><i class="fas fa-user-plus"></i> 免费注册</a>
          </div>
        </div>
      </ul>
      <ul class="message-r">
        <div class="topMessage home">
          <div class="menu-hd">
            <a href="index.jsp" target="_top" class="h"><i class="fas fa-home"></i> 商城首页</a>
          </div>
        </div>
        <div class="topMessage my-shangcheng">
          <div class="menu-hd MyShangcheng">
            <a href="person/index.html" target="_top">
              <i class="fas fa-user-circle"></i> 个人中心
            </a>
          </div>
        </div>
        <div class="topMessage mini-cart">
          <div class="menu-hd">
            <a id="mc-menu-hd" href="shopcart.html" target="_top">
              <i class="fas fa-shopping-cart"></i>
              <span>购物车</span>
              <strong id="J_MiniCartNum" style="background: #ffd700; color: #333; padding: 2px 8px; border-radius: 4px; margin-left: 5px;">0</strong>
            </a>
          </div>
        </div>
        <div class="topMessage favorite">
          <div class="menu-hd">
            <a href="favorite.html" target="_top">
              <i class="fas fa-heart"></i>
              <span>收藏夹</span>
            </a>
          </div>
        </div>
      </ul>
    </div>
  </div>

  <!-- 导航搜索栏 -->
  <div class="nav">
    <div class="logoBig">
      <img src="static/images/logo.png" alt="ZJ商城">
    </div>

    <div class="search-bar pr">
      <form action="search.html" method="get">
        <input id="searchInput" name="keyword" type="text" placeholder="搜索商品、品牌..." autocomplete="off">
        <button class="submit" type="submit"><i class="fas fa-search"></i> 搜索</button>
      </form>
    </div>
  </div>

  <!-- 轮播图 -->
  <div class="banner">
    <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
      <ul class="am-slides">
        <li class="banner1">
          <a href="introduction.html">
            <img src="static/images/ad1.jpg" alt="广告1" />
          </a>
        </li>
        <li class="banner2">
          <a href="#">
            <img src="static/images/ad2.jpg" alt="广告2" />
          </a>
        </li>
        <li class="banner3">
          <a href="#">
            <img src="static/images/ad3.jpg" alt="广告3" />
          </a>
        </li>
        <li class="banner4">
          <a href="#">
            <img src="static/images/ad4.jpg" alt="广告4" />
          </a>
        </li>
      </ul>
    </div>
  </div>

  <!-- 导航分类 -->
  <div class="shopNav">
    <div class="slideall">
      <div class="long-title">
        <span class="all-goods"><i class="fas fa-list"></i> 全部分类</span>
      </div>

      <div class="nav-cont">
        <ul>
          <li class="index">
            <a href="index.jsp"><i class="fas fa-home"></i> 首页</a>
          </li>
          <li class="qc">
            <a href="search-xiezi.html"><i class="fas fa-shoe-prints"></i> 鞋子</a>
          </li>
          <li class="qc">
            <a href="search-kuzi.html"><i class="fas fa-shirt"></i> 裤子</a>
          </li>
        </ul>
      </div>

      <div class="nav-extra">
        <div style="background: white; padding: 15px; border-radius: 8px; margin-top: 15px;">
          <i class="fas fa-gift" style="color: #ff6b6b; font-size: 18px;"></i>
          <b style="margin-left: 10px; font-weight: bold;">我的福利</b>
          <i class="fas fa-arrow-right" style="float: right; color: #ff6b6b;"></i>
        </div>
      </div>

      <!-- 侧边导航 -->
      <div id="nav" class="navfull">
        <div class="area clearfix">
          <div class="category-content" id="guide_2">
            <div class="category">
              <ul class="category-list" id="js_climit_li">
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name">
                      <i style="width: 28px; height: 28px; display: flex; align-items: center; justify-content: center;">
                        <img src="static/images/cake.png" alt="点心">
                      </i>
                      <a class="ml-22" title="点心" style="color: #ff6b6b;">点心/蛋糕</a>
                      <em>></em>
                    </h3>
                  </div>
                  <div class="menu-item menu-in top" style="display: none;">
                    <div class="area-in">
                      <div class="area-bg">
                        <div class="menu-srot">
                          <div class="sort-side">
                            <dl class="dl-sort">
                              <dt style="font-weight: bold; color: #333;">
                                <span title="蛋糕">蛋糕</span>
                              </dt>
                              <dd style="padding: 8px 0;">
                                <a title="蒸蛋糕" href="search.html" style="color: #666; text-decoration: none;">
                                  <span><i class="fas fa-arrow-right" style="margin-right: 5px;"></i> 蒸蛋糕</span>
                                </a>
                              </dd>
                            </dl>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <b class="arrow"></b>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- 小导航 -->
      <div class="am-g am-g-fixed smallnav">
        <div>
          <a href="sort.html">
            <img src="static/images/navsmall.jpg" alt="商品分类" />
            <div class="title"><i class="fas fa-list"></i> 商品分类</div>
          </a>
        </div>
        <div>
          <a href="#">
            <img src="static/images/huismall.jpg" alt="大聚惠" />
            <div class="title"><i class="fas fa-gift"></i> 大聚惠</div>
          </a>
        </div>
        <div>
          <a href="person/index.html">
            <img src="static/images/mansmall.jpg" alt="个人中心" />
            <div class="title"><i class="fas fa-user"></i> 个人中心</div>
          </a>
        </div>
        <div>
          <a href="#">
            <img src="static/images/moneysmall.jpg" alt="投资理财" />
            <div class="title"><i class="fas fa-piggy-bank"></i> 投资理财</div>
          </a>
        </div>
      </div>

      <!-- 商城头条 -->
      <div class="marqueen">
        <span class="marqueen-title"><i class="fas fa-bell"></i> 商城头条</span>
        <div class="demo">
          <ul>
            <li class="title-first">
              <a target="_blank" href="#">
                <img src="static/images/TJ2.jpg" alt="爆品">
                <span>[特惠]</span>商城爆品1分秒
              </a>
            </li>
            <li class="title-first">
              <a target="_blank" href="#">
                <img src="static/images/TJ.jpg" alt="合作">
                <span>[公告]</span>商城与广州市签署战略合作协议
              </a>
            </li>

            <li>
              <a target="_blank" href="search.html">
                <span>[特惠]</span>洋河年末大促，低至两件五折
              </a>
            </li>
            <li>
              <a target="_blank" href="search.html">
                <span>[公告]</span>华北、华中部分地区配送延迟
              </a>
            </li>
            <li>
              <a target="_blank" href="search.html">
                <span>[特惠]</span>家电狂欢千亿礼券 买1送1！
              </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- VIP 用户信息 -->
      <div class="mod-vip">
        <div class="m-baseinfo">
          <a href="person/index.html">
            <img src="static/images/getAvatar.do.jpg" alt="用户头像">
          </a>
          <em>
            <span class="s-name">小叮当</span>
            <a href="#" style="display: block; margin-top: 5px;">
              <p><i class="fas fa-star"></i> 点击更多优惠活动</p>
            </a>
          </em>
        </div>
        <div class="member-logout">
          <a class="btn" href="login.html">登录</a>
          <a class="btn" href="register.html">注册</a>
        </div>
        <div class="member-login">
          <a href="#">
            <strong>0</strong>待收货
          </a>
          <a href="#">
            <strong>0</strong>待发货
          </a>
          <a href="#">
            <strong>0</strong>待付款
          </a>
          <a href="#">
            <strong>0</strong>待评价
          </a>
        </div>
      </div>

      <div class="clear"></div>
    </div>
  </div>

  <!-- 轮播脚本 -->
  <script type="text/javascript">
    (function () {
      $('.am-slider').flexslider();
    });
    $(document).ready(function () {
      $(".category-list li").hover(function () {
        $(this).find(".menu-in").slideDown(200);
        $(this).addClass("hover");
      }, function () {
        $(this).find(".menu-in").slideUp(200);
        $(this).removeClass("hover");
      });
    });

    // 自动滚动
    if ($(window).width() < 640) {
      function autoScroll(obj) {
        $(obj).find("ul").animate({
          marginTop: "-39px"
        }, 500, function () {
          $(this).css({
            marginTop: "0px"
          }).find("li:first").appendTo(this);
        })
      }

      $(function () {
        setInterval('autoScroll(".demo")', 3000);
      })
    }
  </script>

  <script>
    window.jQuery || document.write('<script src="static/js/jquery.min.js "><\/script>');
  </script>
  <script type="text/javascript " src="static/js/quick_links.js "></script>
</body>

</html>