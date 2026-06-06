# 🛍️ ZJ 商城

> 一个功能完整的在线商城平台

## ✨ 项目介绍

ZJ 商城是一个现代化的电子商务平台，提供完整的商品管理、购物车、订单、支付等功能。

---

## 🎯 核心功能

### 👤 用户功能
- 用户注册与登录
- 个人资料管理
- 地址管理
- 订单历史查看
- 收藏夹管理

### 🏪 商品功能
- 商品浏览与搜索
- 商品分类导航
- 商品详情展示
- 商品评价与评论
- 库存管理

### 🛒 购物功能
- 购物车管理
- 订单创建与支付
- 订单状态跟踪
- 物流信息查询
- 退货与售后

### 💳 支付功能
- 多种支付方式
- 订单结算
- 发票管理

---

## 🏗️ 技术栈

| 技术 | 说明 |
|------|------|
| **后端** | Java Spring Boot |
| **构建工具** | Maven |
| **数据库** | MySQL |
| **API** | RESTful API |

---

## 📦 项目结构

```
zj/
├── src/                    # 源代码目录
├── pom.xml                # Maven 配置文件
├── mvnw                   # Maven Wrapper (Linux/Mac)
├── mvnw.cmd              # Maven Wrapper (Windows)
├── README.md             # 项目说明文档
└── .gitignore           # Git 忽略文件配置
```

---

## 🚀 快速开始

### 前置条件
- Java 8+
- Maven 3.6+
- MySQL 5.7+

### 安装与运行

1. **克隆项目**
```bash
git clone https://github.com/zj123-cloud/zj.git
cd zj
```

2. **配置数据库**
   - 创建数据库并导入数据脚本
   - 修改 `application.properties` 中的数据库连接信息

3. **编译构建**
```bash
./mvnw clean install
```

4. **运行项目**
```bash
./mvnw spring-boot:run
```

5. **访问应用**
```
http://localhost:8080
```

---

## 📚 API 文档

### 商品相关 API

#### 获取商品列表
```
GET /api/products
参数: page=1&limit=10&category=1
返回: 商品列表数据
```

#### 获取商品详情
```
GET /api/products/{id}
返回: 商品完整信息（名称、价格、描述、图片等）
```

#### 搜索商品
```
GET /api/products/search
参数: keyword=关键词&minPrice=100&maxPrice=5000
返回: 搜索结果列表
```

### 订单相关 API

#### 创建订单
```
POST /api/orders
请求体: {items: [{productId, quantity}], address_id}
返回: 订单ID
```

#### 查询订单
```
GET /api/orders
返回: 当前用户的订单列表
```

---

## 💾 商品信息数据结构

```json
{
  "id": 1,
  "name": "商品名称",
  "category": "电子产品",
  "price": 999.99,
  "originalPrice": 1299.99,
  "stock": 50,
  "description": "商品描述",
  "images": [
    "image1.jpg",
    "image2.jpg"
  ],
  "rating": 4.5,
  "reviews": 128,
  "seller": "官方旗舰店",
  "salesVolume": 1200,
  "createdAt": "2024-01-01",
  "attributes": {
    "color": "黑色",
    "size": "M",
    "material": "棉"
  }
}
```

---

## 🤝 贡献指南

欢迎提交 Issue 和 Pull Request！

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

---

## 📄 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

---

## 📞 联系方式

- **GitHub**: [@zj123-cloud](https://github.com/zj123-cloud)
- **邮箱**: zj123-cloud@example.com

---

**最后更新**: 2026-06-06 | **版本**: 1.0.0
