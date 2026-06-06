<%-- ZJ 商城首页 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="ZJ商城 - 您的一站式购物平台">
    <title>ZJ商城 - 品质商品，优惠多多</title>

    <!-- 样式库 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="static/css/amazeui.css" rel="stylesheet" type="text/css" />
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen', 'Ubuntu', 'Cantarell', sans-serif;
            background-color: #f5f5f5;
            color: #333;
        }

        /* ============ 顶部通知条 ============ */
        .top-bar {
            background: linear-gradient(90deg, #ff6b6b 0%, #ee5a52 100%);
            color: white;
            padding: 8px 0;
            font-size: 12px;
        }

        .top-bar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            transition: opacity 0.3s;
        }

        .top-bar a:hover {
            opacity: 0.8;
        }

        /* ============ 导航栏 ============ */
        .navbar-custom {
            background: white;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            padding: 12px 0;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar-custom .navbar-brand {
            font-weight: bold;
            font-size: 24px;
            color: #ff6b6b !important;
            margin-right: 30px;
        }

        .navbar-custom .nav-link {
            color: #666 !important;
            margin: 0 10px;
            transition: color 0.3s;
            font-size: 14px;
        }

        .navbar-custom .nav-link:hover {
            color: #ff6b6b !important;
        }

        /* 搜索框 */
        .search-container {
            flex: 1;
            max-width: 500px;
        }

        .search-box {
            display: flex;
            border: 2px solid #ff6b6b;
            border-radius: 4px;
            overflow: hidden;
        }

        .search-box input {
            flex: 1;
            border: none;
            padding: 10px 15px;
            font-size: 14px;
            outline: none;
        }

        .search-box button {
            background: #ff6b6b;
            color: white;
            border: none;
            padding: 0 20px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .search-box button:hover {
            background: #ee5a52;
        }

        /* 购物车icon */
        .cart-icon {
            position: relative;
            font-size: 18px;
            cursor: pointer;
            color: #666;
            transition: color 0.3s;
        }

        .cart-icon:hover {
            color: #ff6b6b;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background: #ff6b6b;
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            font-weight: bold;
        }

        /* ============ 轮播图 ============ */
        .banner-container {
            background: white;
            margin-bottom: 20px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .carousel-item img {
            height: 400px;
            object-fit: cover;
            width: 100%;
        }

        .carousel-control-prev,
        .carousel-control-next {
            background: rgba(0,0,0,0.3);
            width: 50px;
            border-radius: 4px;
        }

        /* ============ 分类导航 ============ */
        .category-nav {
            background: white;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .category-nav h5 {
            font-weight: bold;
            margin-bottom: 15px;
            color: #333;
        }

        .category-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
            gap: 10px;
        }

        .category-item {
            display: flex;
            align-items: center;
            padding: 12px 15px;
            background: #f9f9f9;
            border-radius: 6px;
            text-decoration: none;
            color: #666;
            transition: all 0.3s;
            cursor: pointer;
            border-left: 3px solid transparent;
        }

        .category-item:hover {
            background: #fff3f1;
            border-left-color: #ff6b6b;
            color: #ff6b6b;
            transform: translateX(5px);
        }

        .category-item i {
            margin-right: 10px;
            font-size: 18px;
        }

        /* ============ 快捷导航 ============ */
        .quick-nav {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
            gap: 15px;
            margin-bottom: 20px;
        }

        .quick-nav-item {
            background: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            text-decoration: none;
            color: #333;
            transition: all 0.3s;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .quick-nav-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        }

        .quick-nav-item i {
            font-size: 32px;
            color: #ff6b6b;
            margin-bottom: 10px;
        }

        .quick-nav-item span {
            font-size: 14px;
            display: block;
            font-weight: 500;
        }

        /* ============ 商品展示 ============ */
        .products-section {
            background: white;
            padding: 30px;
            border-radius: 8px;
            margin-bottom: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .section-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 3px solid #ff6b6b;
            display: inline-block;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .product-card {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            transition: all 0.3s;
            border: 1px solid #f0f0f0;
            cursor: pointer;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            border-color: #ff6b6b;
        }

        .product-image {
            width: 100%;
            height: 200px;
            background: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 60px;
            overflow: hidden;
            position: relative;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .product-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            background: #ff6b6b;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
        }

        .product-info {
            padding: 15px;
        }

        .product-name {
            font-size: 14px;
            color: #333;
            margin-bottom: 8px;
            font-weight: 500;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .product-rating {
            font-size: 12px;
            color: #999;
            margin-bottom: 10px;
        }

        .product-rating i {
            color: #ffc107;
        }

        .product-price {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .price-current {
            font-size: 18px;
            color: #ff6b6b;
            font-weight: bold;
        }

        .price-original {
            font-size: 12px;
            color: #999;
            text-decoration: line-through;
        }

        .product-footer {
            display: flex;
            gap: 8px;
        }

        .btn-add-cart {
            flex: 1;
            background: #ff6b6b;
            color: white;
            border: none;
            padding: 8px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 12px;
            transition: background 0.3s;
        }

        .btn-add-cart:hover {
            background: #ee5a52;
        }

        .btn-favorite {
            background: #f5f5f5;
            color: #ff6b6b;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .btn-favorite:hover {
            background: #ff6b6b;
            color: white;
        }

        /* ============ 页脚 ============ */
        .footer {
            background: #333;
            color: #ddd;
            padding: 40px 0;
            margin-top: 40px;
        }

        .footer h6 {
            color: white;
            margin-bottom: 15px;
            font-weight: bold;
        }

        .footer a {
            color: #ddd;
            text-decoration: none;
            font-size: 13px;
            display: block;
            margin-bottom: 8px;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #ff6b6b;
        }

        .footer-bottom {
            border-top: 1px solid #555;
            padding-top: 20px;
            margin-top: 30px;
            text-align: center;
            font-size: 12px;
        }

        /* ============ 响应式 ============ */
        @media (max-width: 768px) {
            .carousel-item img {
                height: 250px;
            }

            .search-container {
                max-width: 100%;
                order: 3;
                flex-basis: 100%;
                margin-top: 10px;
            }

            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
            }

            .quick-nav {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .navbar-custom .navbar-brand {
                font-size: 18px;
            }

            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 10px;
            }

            .section-title {
                font-size: 18px;
            }
        }
    </style>
</head>

<body>
    <!-- 顶部通知 -->
    <div class="top-bar">
        <div class="container-fluid">
            <a href="#"><i class="fas fa-bell"></i> 欢迎来到ZJ商城，品质生活从这里开始</a>
        </div>
    </div>

    <!-- 导航栏 -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">
                <i class="fas fa-shopping-bag"></i> ZJ商城
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link active" href="index.jsp">首页</a></li>
                    <li class="nav-item"><a class="nav-link" href="#products">商品</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">分类</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">秒杀</a></li>
                </ul>

                <!-- 搜索框 -->
                <div class="search-container">
                    <form class="search-box" action="search.jsp" method="get">
                        <input type="text" name="keyword" placeholder="搜索商品、品牌...">
                        <button type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>

                <!-- 用户菜单 -->
                <ul class="navbar-nav ms-3">
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">
                            <i class="fas fa-user"></i> 登录
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cart.jsp">
                            <span class="cart-icon">
                                <i class="fas fa-shopping-cart"></i>
                                <span class="cart-count" id="cartCount">0</span>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- 容器 -->
    <div class="container-fluid">
        <!-- 轮播图 -->
        <div class="banner-container" style="margin-top: 20px;">
            <div id="mainCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2"></button>
                    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="product-image" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                            <div style="text-align: center; color: white;">
                                <i class="fas fa-star" style="font-size: 80px; opacity: 0.3;"></i>
                                <p style="margin-top: 20px; font-size: 24px; font-weight: bold;">品质商品推荐</p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="product-image" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                            <div style="text-align: center; color: white;">
                                <i class="fas fa-gift" style="font-size: 80px; opacity: 0.3;"></i>
                                <p style="margin-top: 20px; font-size: 24px; font-weight: bold;">夏日特惠促销</p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="product-image" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
                            <div style="text-align: center; color: white;">
                                <i class="fas fa-bolt" style="font-size: 80px; opacity: 0.3;"></i>
                                <p style="margin-top: 20px; font-size: 24px; font-weight: bold;">限时秒杀活动</p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="product-image" style="background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);">
                            <div style="text-align: center; color: white;">
                                <i class="fas fa-fire" style="font-size: 80px; opacity: 0.3;"></i>
                                <p style="margin-top: 20px; font-size: 24px; font-weight: bold;">热销爆品推荐</p>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
                    <i class="fas fa-chevron-left"></i>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
        </div>

        <!-- 快捷导航 -->
        <div class="quick-nav" style="margin-top: 20px;">
            <a href="#" class="quick-nav-item">
                <i class="fas fa-list"></i>
                <span>全部分类</span>
            </a>
            <a href="#" class="quick-nav-item">
                <i class="fas fa-fire"></i>
                <span>热卖商品</span>
            </a>
            <a href="#" class="quick-nav-item">
                <i class="fas fa-star"></i>
                <span>新品上市</span>
            </a>
            <a href="#" class="quick-nav-item">
                <i class="fas fa-tag"></i>
                <span>限时优惠</span>
            </a>
        </div>

        <!-- 分类导航 -->
        <div class="category-nav">
            <h5><i class="fas fa-list-ul"></i> 商品分类</h5>
            <div class="category-list">
                <a href="search.jsp?category=1" class="category-item">
                    <i class="fas fa-shoe-prints"></i>
                    <span>鞋类</span>
                </a>
                <a href="search.jsp?category=2" class="category-item">
                    <i class="fas fa-shirt"></i>
                    <span>服装</span>
                </a>
                <a href="search.jsp?category=3" class="category-item">
                    <i class="fas fa-watch"></i>
                    <span>手表</span>
                </a>
                <a href="search.jsp?category=4" class="category-item">
                    <i class="fas fa-bag-shopping"></i>
                    <span>箱包</span>
                </a>
                <a href="search.jsp?category=5" class="category-item">
                    <i class="fas fa-glasses"></i>
                    <span>眼镜</span>
                </a>
                <a href="search.jsp?category=6" class="category-item">
                    <i class="fas fa-home"></i>
                    <span>家居</span>
                </a>
                <a href="search.jsp?category=7" class="category-item">
                    <i class="fas fa-laptop"></i>
                    <span>电子产品</span>
                </a>
                <a href="search.jsp?category=8" class="category-item">
                    <i class="fas fa-dumbbell"></i>
                    <span>运动户外</span>
                </a>
            </div>
        </div>

        <!-- 热销商品 -->
        <div class="products-section" id="products">
            <h2 class="section-title">🔥 热销商品</h2>
            <div class="products-grid">
                <!-- 商品卡片示例 -->
                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                        <i class="fas fa-shoe-prints" style="color: white;"></i>
                        <span class="product-badge">热销</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">时尚运动鞋</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half"></i>
                            <span>(128条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥299</span>
                            <span class="price-original">¥599</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                        <i class="fas fa-shirt" style="color: white;"></i>
                        <span class="product-badge">新品</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">舒适棉质T恤</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half"></i>
                            <span>(85条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥79</span>
                            <span class="price-original">¥159</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
                        <i class="fas fa-watch" style="color: white;"></i>
                        <span class="product-badge">优惠</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">智能手表</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span>(256条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥899</span>
                            <span class="price-original">¥1299</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);">
                        <i class="fas fa-bag-shopping" style="color: white;"></i>
                        <span class="product-badge">热销</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">真皮商务背包</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half"></i>
                            <span>(192条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥459</span>
                            <span class="price-original">¥899</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                        <i class="fas fa-glasses" style="color: white;"></i>
                        <span class="product-badge">新品</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">防蓝光眼镜</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half"></i>
                            <span>(73条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥199</span>
                            <span class="price-original">¥399</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                        <i class="fas fa-laptop" style="color: white;"></i>
                        <span class="product-badge">优惠</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">无线蓝牙音箱</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span>(312条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥249</span>
                            <span class="price-original">¥499</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
                        <i class="fas fa-dumbbell" style="color: white;"></i>
                        <span class="product-badge">热销</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">瑜伽垫套装</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half"></i>
                            <span>(156条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥149</span>
                            <span class="price-original">¥299</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);">
                        <i class="fas fa-home" style="color: white;"></i>
                        <span class="product-badge">新品</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">智能台灯</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span>(89条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥199</span>
                            <span class="price-original">¥399</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 推荐商品 -->
        <div class="products-section">
            <h2 class="section-title">⭐ 推荐商品</h2>
            <div class="products-grid">
                <!-- 更多商品卡片可以在这里添加 -->
                <div class="product-card">
                    <div class="product-image" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                        <i class="fas fa-crown" style="color: white;"></i>
                        <span class="product-badge">VIP推荐</span>
                    </div>
                    <div class="product-info">
                        <div class="product-name">高端皮鞋</div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span>(201条评价)</span>
                        </div>
                        <div class="product-price">
                            <span class="price-current">¥799</span>
                            <span class="price-original">¥1599</span>
                        </div>
                        <div class="product-footer">
                            <button class="btn-add-cart">加入购物车</button>
                            <button class="btn-favorite"><i class="fas fa-heart"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 页脚 -->
    <footer class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <h6>关于我们</h6>
                    <a href="#">公司简介</a>
                    <a href="#">加入我们</a>
                    <a href="#">联系我们</a>
                    <a href="#">社会责任</a>
                </div>
                <div class="col-md-3">
                    <h6>购物指南</h6>
                    <a href="#">新用户指南</a>
                    <a href="#">物流说明</a>
                    <a href="#">退货政策</a>
                    <a href="#">常见问题</a>
                </div>
                <div class="col-md-3">
                    <h6>服务保障</h6>
                    <a href="#">正品保证</a>
                    <a href="#">假一赔三</a>
                    <a href="#">7天无理由退货</a>
                    <a href="#">24小时客服</a>
                </div>
                <div class="col-md-3">
                    <h6>关注我们</h6>
                    <a href="#"><i class="fab fa-weibo"></i> 微博</a>
                    <a href="#"><i class="fab fa-weixin"></i> 微信</a>
                    <a href="#"><i class="fab fa-qq"></i> QQ</a>
                    <a href="#"><i class="fab fa-github"></i> GitHub</a>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 ZJ商城 版权所有 | 京ICP备12345678号 | <a href="#" style="color: #ddd;">隐私政策</a></p>
            </div>
        </div>
    </footer>

    <!-- 脚本库 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="static/js/jquery.min.js"></script>
    
    <script>
        // 购物车计数器示例
        $(document).ready(function() {
            // 模拟购物车数据
            let cartCount = 0;

            // 加入购物车事件
            $('.btn-add-cart').click(function() {
                cartCount++;
                $('#cartCount').text(cartCount);
                
                // 显示提示信息
                const productName = $(this).closest('.product-card').find('.product-name').text();
                alert(productName + ' 已添加到购物车！');
            });

            // 收藏按钮事件
            $('.btn-favorite').click(function() {
                $(this).toggleClass('active');
                if($(this).hasClass('active')) {
                    $(this).css('background', '#ff6b6b').css('color', 'white');
                } else {
                    $(this).css('background', '#f5f5f5').css('color', '#ff6b6b');
                }
            });

            // 搜索表单提交
            $('.search-box').submit(function(e) {
                const keyword = $(this).find('input').val().trim();
                if(!keyword) {
                    e.preventDefault();
                    alert('请输入搜索关键词');
                }
            });
        });
    </script>
</body>

</html>