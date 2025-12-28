# Maven安装配置指南

## 🔍 问题分析

您遇到的错误：
```
mvn : 无法将"mvn"项识别为 cmdlet、函数、脚本文件或可运行程序的名称
```

**原因**: 系统中没有安装Maven或Maven没有配置到环境变量中。

## 🚀 解决方案（多种方法）

### 方法1：快速安装Maven（推荐）

#### 步骤1：下载Maven
1. 访问Maven官网：https://maven.apache.org/download.cgi
2. 下载 `apache-maven-3.9.6-bin.zip`（或最新版本）
3. 解压到 `C:\Program Files\Apache\maven` 目录

#### 步骤2：配置环境变量
1. **右键"此电脑"** → **属性** → **高级系统设置** → **环境变量**
2. **系统变量**中点击**新建**：
   - 变量名：`MAVEN_HOME`
   - 变量值：`C:\Program Files\Apache\maven\apache-maven-3.9.6`
3. **编辑Path变量**，添加：`%MAVEN_HOME%\bin`
4. **确定**保存所有设置

#### 步骤3：验证安装
**重新打开命令提示符**：
```cmd
mvn -version
```

### 方法2：使用项目中的Maven Wrapper（最简单）

您的项目中已经包含了Maven Wrapper，可以直接使用：

#### Windows系统：
```cmd
cd /d "D:\00Lesson\大四\综合实训\（118）大学竞赛活动报名系统\118\competition_apply_system"
.\mvnw.cmd spring-boot:run
```

#### 或者：
```cmd
cd /d "D:\00Lesson\大四\综合实训\（118）大学竞赛活动报名系统\118\competition_apply_system"
mvnw spring-boot:run
```

### 方法3：使用IDE启动（推荐给初学者）

#### 使用IntelliJ IDEA：
1. **打开IntelliJ IDEA**
2. **File** → **Open** → 选择 `118\competition_apply_system` 目录
3. **等待项目加载完成**（IDEA会自动下载依赖）
4. **找到主类**：`CompetitionApplySystemApplication.java`
5. **右键** → **Run 'CompetitionApplySystemApplication'**

#### 使用Eclipse：
1. **打开Eclipse**
2. **File** → **Import** → **Existing Maven Projects**
3. **选择** `118\competition_apply_system` 目录
4. **等待项目导入完成**
5. **右键项目** → **Run As** → **Spring Boot App**

### 方法4：使用已编译的JAR文件

如果项目已经编译过，可以直接运行JAR文件：
```cmd
cd /d "D:\00Lesson\大四\综合实训\（118）大学竞赛活动报名系统\118\competition_apply_system\target"
java -jar BookManagerApi-1.0.5.jar
```

## 🎯 立即可用的解决方案

### 最快方法：使用Maven Wrapper
**复制以下命令到PowerShell中**：
```powershell
cd "D:\00Lesson\大四\综合实训\（118）大学竞赛活动报名系统\118\competition_apply_system"
.\mvnw.cmd spring-boot:run
```

### 备用方法：使用IDE
1. **下载IntelliJ IDEA Community版**（免费）
2. **打开项目目录**
3. **点击运行按钮**

## 🔧 Maven安装详细步骤

### 自动安装脚本
创建一个 `install_maven.bat` 文件：
```batch
@echo off
echo 正在下载Maven...
powershell -Command "Invoke-WebRequest -Uri 'https://archive.apache.org/dist/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip' -OutFile 'maven.zip'"

echo 正在解压Maven...
powershell -Command "Expand-Archive -Path 'maven.zip' -DestinationPath 'C:\Program Files\Apache\maven' -Force"

echo 请手动配置环境变量：
echo 1. MAVEN_HOME = C:\Program Files\Apache\maven\apache-maven-3.9.6
echo 2. 在PATH中添加：%%MAVEN_HOME%%\bin
pause
```

### 手动安装步骤
1. **下载Maven**：
   - 访问：https://maven.apache.org/download.cgi
   - 下载：apache-maven-3.9.6-bin.zip

2. **解压安装**：
   - 解压到：`C:\Program Files\Apache\maven\`

3. **配置环境变量**：
   - `MAVEN_HOME`: `C:\Program Files\Apache\maven\apache-maven-3.9.6`
   - `PATH`: 添加 `%MAVEN_HOME%\bin`

4. **验证安装**：
   ```cmd
   mvn -version
   ```

## 🚨 如果仍有问题

### 检查Java环境
Maven需要Java环境，确保已安装JDK：
```cmd
java -version
javac -version
```

### 检查项目结构
确认项目目录中有 `pom.xml` 文件：
```cmd
dir pom.xml
```

### 使用绝对路径
如果Maven Wrapper不工作，尝试：
```cmd
"D:\00Lesson\大四\综合实训\（118）大学竞赛活动报名系统\118\competition_apply_system\mvnw.cmd" spring-boot:run
```

## 📋 系统启动检查清单

- [x] ✅ Redis已启动
- [ ] 🔄 Maven环境配置
- [ ] 🔄 后端服务启动
- [ ] 🔄 MySQL数据库
- [ ] 🔄 前端服务启动

## 🎯 推荐方案

**对于初学者，我强烈推荐使用IDE方式**：
1. **下载IntelliJ IDEA Community**（免费）
2. **打开项目**
3. **等待自动配置**
4. **点击运行**

这样可以避免复杂的环境配置问题！

---

**选择最适合您的方法，我会继续指导您完成系统启动！**
