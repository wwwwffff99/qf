# 大学竞赛活动报名系统

## 项目概述

本系统是一个基于Spring Boot + Vue.js的大学竞赛活动报名管理系统，为高校学生和管理员提供便捷的竞赛报名、组队、管理等功能。

## 技术架构

### 后端技术栈
- **框架**: Spring Boot 2.5.6
- **数据库**: MySQL 8.0
- **ORM**: MyBatis
- **安全框架**: Apache Shiro
- **缓存**: Redis
- **连接池**: Druid
- **文档处理**: Apache POI
- **构建工具**: Maven

### 前端技术栈
- **框架**: Vue.js 2.6.10
- **UI组件库**: Element UI 2.13.0
- **HTTP客户端**: Axios
- **图表组件**: ECharts + V-Charts
- **路由**: Vue Router
- **构建工具**: Vue CLI

## 功能模块

### 学生端功能
1. **用户管理**
   - 用户登录/注销
   - 个人信息管理
   - 密码修改

2. **竞赛管理**
   - 竞赛通知浏览
   - 竞赛详情查看
   - 个人报名
   - 我的比赛管理

3. **组队功能**
   - 创建队伍
   - 加入队伍
   - 队伍管理
   - 招募信息发布

4. **系统功能**
   - 系统公告查看
   - 获奖通知
   - 统计分析
   - 投诉建议

### 管理员端功能
1. **竞赛管理**
   - 竞赛信息发布
   - 竞赛通知管理
   - 报名列表查看
   - 数据导出(Excel)

2. **系统管理**
   - 系统公告发布
   - 获奖通知发布
   - 反馈建议处理
   - 统计分析

## 数据库设计

### 核心数据表
- `t_user` - 用户信息表
- `t_competition` - 竞赛信息表
- `t_team` - 队伍信息表
- `t_apply` - 申请记录表
- `t_notification` - 通知信息表
- `t_advice` - 反馈建议表
- `t_college` - 学院信息表
- `t_university` - 大学信息表

## 项目结构

```
├── 118/
│   ├── competition_apply_system/          # 后端Spring Boot项目
│   │   ├── src/main/java/
│   │   │   └── com/nnxy/competition/
│   │   │       ├── controller/            # 控制器层
│   │   │       ├── service/              # 服务层
│   │   │       ├── dao/                  # 数据访问层
│   │   │       ├── entity/               # 实体类
│   │   │       ├── config/               # 配置类
│   │   │       └── utils/                # 工具类
│   │   └── src/main/resources/
│   │       ├── mapper/                   # MyBatis映射文件
│   │       └── application.properties    # 配置文件
│   └── competitionapply-web/             # 前端Vue项目
│       ├── src/
│       │   ├── components/               # 学生端组件
│       │   ├── adminPage/                # 管理员端组件
│       │   ├── router/                   # 路由配置
│       │   └── assets/                   # 静态资源
│       └── package.json                  # 依赖配置
├── db_competitionapply.sql              # 数据库脚本
├── Redis/                               # Redis相关文件
└── rep/                                 # Maven仓库
```

## 部署说明

### 环境要求
- JDK 1.8+
- MySQL 8.0+
- Redis 6.0+
- Node.js 12.0+
- Maven 3.6+

### 后端部署
1. 导入数据库脚本 `db_competitionapply.sql`
2. 修改 `application.properties` 中的数据库连接配置
3. 启动Redis服务
4. 运行Spring Boot应用：
   ```bash
   cd 118/competition_apply_system
   mvn spring-boot:run
   ```
   服务将在 http://localhost:8999/competition 启动

### 前端部署
1. 安装依赖：
   ```bash
   cd 118/competitionapply-web
   npm install
   ```
2. 开发环境运行：
   ```bash
   npm run serve
   ```
3. 生产环境构建：
   ```bash
   npm run build
   ```

## 系统特色

1. **权限管理**: 基于Shiro的角色权限控制
2. **数据缓存**: Redis缓存提升系统性能
3. **文件管理**: 支持竞赛文件上传下载
4. **数据导出**: 支持Excel格式报名数据导出
5. **响应式设计**: 适配不同屏幕尺寸
6. **数据可视化**: 基于ECharts的统计图表

## 默认账号

### 管理员账号
- 用户名: admin
- 密码: admin123

### 学生账号
- 用户名: 20160216002
- 密码: 123456

## 开发团队

- 开发者: CZS
- 创建时间: 2022/12/13
- 最后更新: 2023/06/06

## 版本信息

- 当前版本: v1.0.5
- Spring Boot版本: 2.5.6
- Vue.js版本: 2.6.10

## 许可证

本项目仅供学习和研究使用。

---

*注：本系统为大学综合实训项目，主要用于学习和实践现代Web开发技术。*
