# ✅ LeMingle-Release 发布检查清单

在将此仓库推送到 GitHub 之前，请确保完成以下所有步骤。

---

## 📋 发布前检查

### 1. 文件准备

- [ ] ✅ 已复制所有多语言 README 文件
  - [ ] README.md (简体中文)
  - [ ] README_EN.md (English)
  - [ ] README_ZH_TW.md (繁體中文)
  - [ ] README_KO.md (한국어)
  - [ ] README_FR.md (Français)

- [ ] ✅ 已复制 LICENSE 文件

- [ ] ✅ 已创建支持文档
  - [ ] INSTALLATION.md
  - [ ] SETUP_GUIDE.md
  - [ ] CONTRIBUTING.md
  - [ ] SECURITY.md
  - [ ] RELEASE_TEMPLATE.md

- [ ] ✅ 已创建 .gitignore

- [ ] ✅ 已创建 Issue 模板

### 2. 安全检查

- [ ] ⚠️ **确认没有敏感信息**
  - [ ] 没有 API keys
  - [ ] 没有密码或 tokens
  - [ ] 没有 Supabase service role key
  - [ ] 没有 Stripe secret keys
  - [ ] 没有内部开发文档
  - [ ] 没有数据库 schema

- [ ] ⚠️ **确认只包含公开内容**
  - [ ] 只有打包好的 zip 文件
  - [ ] 只有面向用户的文档
  - [ ] 没有源代码
  - [ ] 没有后端代码

### 3. 内容检查

- [ ] ✅ 所有链接都正确
  - [ ] 官网链接: https://www.lemingle.com
  - [ ] 邮箱: qiangkong_ai@163.com
  - [ ] Release 链接（发布后更新）

- [ ] ✅ 版本号一致
  - [ ] 所有文档中的版本号都是 v1.0.2
  - [ ] zip 文件名: lemingle-v1.0.2.zip

- [ ] ✅ 多语言内容完整
  - [ ] 所有语言的 README 都已更新
  - [ ] 安装指南包含所有语言
  - [ ] 联系方式在所有文档中一致

---

## 🚀 GitHub 仓库设置

### 1. 创建仓库

```bash
# 在 GitHub 上创建新仓库
仓库名: LeMingle-Release
描述: Official release repository for LeMingle browser extension
可见性: Public ✅
不要初始化 README（我们已经有了）
```

### 2. 仓库设置

- [ ] ✅ 设置仓库为 Public
- [ ] ✅ 添加仓库描述
- [ ] ✅ 添加网站链接: https://www.lemingle.com
- [ ] ✅ 添加主题标签:
  - `browser-extension`
  - `language-learning`
  - `chrome-extension`
  - `edge-extension`
  - `education`

### 3. 保护设置

- [ ] ✅ Settings → General → Features
  - [ ] 启用 Issues
  - [ ] 禁用 Wiki（不需要）
  - [ ] 禁用 Projects（不需要）
  - [ ] 禁用 Discussions（可选）

- [ ] ✅ Settings → Security
  - [ ] 启用 Dependabot alerts（如果有依赖）
  - [ ] 启用 Security policy（已有 SECURITY.md）

---

## 📦 首次发布步骤

### 1. 初始化仓库

```bash
cd LeMingle-Release

# 初始化 Git
git init

# 添加所有文件
git add .

# 首次提交
git commit -m "Initial release: LeMingle v1.0.2"

# 连接到 GitHub（替换为你的仓库 URL）
git remote add origin https://github.com/YOUR_USERNAME/LeMingle-Release.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

### 2. 创建 Release

1. **访问 GitHub 仓库**
   - 进入 Releases 页面
   - 点击 "Create a new release"

2. **填写 Release 信息**
   - **Tag**: `v1.0.2`
   - **Target**: `main`
   - **Title**: `LeMingle v1.0.2 - Multi-language Support`
   - **Description**: 复制 `RELEASE_TEMPLATE.md` 的内容

3. **上传文件**
   - 上传 `lemingle-v1.0.2.zip`（从 extension 目录复制）
   - 确认文件大小约 1.5 MB

4. **发布**
   - 勾选 "Set as the latest release"
   - 点击 "Publish release"

### 3. 更新链接

发布后，更新以下文件中的链接：

- [ ] README.md - 添加 Release 下载链接
- [ ] INSTALLATION.md - 更新 Release 链接
- [ ] RELEASE_TEMPLATE.md - 更新实际链接

```bash
# 提交更新
git add .
git commit -m "docs: Update release links"
git push
```

---

## 🔄 后续版本发布

每次发布新版本时：

### 1. 准备新版本

```bash
# 在主项目中
cd extension
bash build.sh  # 生成新的 zip

# 复制到 Release 仓库
cp lemingle-v1.0.X.zip ../LeMingle-Release/
```

### 2. 更新文档

- [ ] 更新所有 README 中的版本号
- [ ] 更新 INSTALLATION.md 中的版本号
- [ ] 更新 RELEASE_TEMPLATE.md 的 changelog

### 3. 创建新 Release

```bash
cd LeMingle-Release

# 提交更改
git add .
git commit -m "Release v1.0.X"
git push

# 在 GitHub 上创建新 Release
# Tag: v1.0.X
# 上传新的 zip 文件
```

---

## 📊 发布后检查

- [ ] ✅ Release 页面可以无需登录访问
- [ ] ✅ zip 文件可以直接下载
- [ ] ✅ 所有文档链接正常工作
- [ ] ✅ README 在仓库首页正确显示
- [ ] ✅ LICENSE 文件可见

---

## 🎯 推广准备

发布后，你可以：

### 1. 更新官网
- 添加 GitHub Release 下载链接
- 更新"手动安装"部分

### 2. 社交媒体
- 分享 GitHub Release 链接
- 使用多语言 README 链接

### 3. 用户通知
- 发送邮件通知现有用户
- 在网站上添加公告

---

## ⚠️ 重要提醒

### 永远不要公开：
- ❌ 源代码（保持在私有仓库）
- ❌ API keys 或密钥
- ❌ 数据库配置
- ❌ 后端代码
- ❌ 内部开发文档
- ❌ 商业机密

### 只公开：
- ✅ 打包好的 zip 文件
- ✅ 用户文档
- ✅ 安装指南
- ✅ LICENSE
- ✅ 支持信息

---

## 📞 需要帮助？

如有问题，联系：
- 📧 qiangkong_ai@163.com

---

**祝发布顺利！** 🚀✨
