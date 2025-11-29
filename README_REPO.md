# 📦 LeMingle-Release 仓库说明

这是 LeMingle 的**公开发布仓库**，用于分发浏览器扩展。

---

## 📁 仓库结构

```
LeMingle-Release/
├── README.md                   # 简体中文主页（GitHub 默认显示）
├── README_EN.md               # English version
├── README_ZH_TW.md            # 繁體中文版本
├── README_KO.md               # 한국어 버전
├── README_FR.md               # Version française
│
├── INSTALLATION.md            # 多语言安装指南
├── SETUP_GUIDE.md             # 使用指南
├── CONTRIBUTING.md            # 贡献指南（说明不接受代码贡献）
├── SECURITY.md                # 安全政策
├── LICENSE                    # 许可证
│
├── RELEASE_TEMPLATE.md        # Release 描述模板
├── PUBLISH_CHECKLIST.md       # 发布检查清单（内部使用）
│
├── lemingle-v1.0.2.zip        # 扩展安装包
│
├── .gitignore                 # Git 忽略文件
└── .github/
    └── ISSUE_TEMPLATE.md      # Issue 模板
```

---

## ✅ 已完成的准备工作

### 1. 多语言文档 ✅
- ✅ 5 种语言的 README（简中、英文、繁中、韩语、法语）
- ✅ 多语言安装指南
- ✅ 所有文档内容一致，仅语言不同

### 2. 支持文档 ✅
- ✅ 详细的安装指南（INSTALLATION.md）
- ✅ 使用指南（SETUP_GUIDE.md）
- ✅ 贡献指南（CONTRIBUTING.md）
- ✅ 安全政策（SECURITY.md）

### 3. 发布材料 ✅
- ✅ Release 描述模板（RELEASE_TEMPLATE.md）
- ✅ 发布检查清单（PUBLISH_CHECKLIST.md）
- ✅ Issue 模板

### 4. 安全检查 ✅
- ✅ 不包含任何源代码
- ✅ 不包含 API keys 或密钥
- ✅ 不包含后端代码
- ✅ 不包含内部文档
- ✅ 只包含打包好的 zip 文件

### 5. 扩展文件 ✅
- ✅ lemingle-v1.0.2.zip（1.5 MB）
- ✅ 已验证不包含敏感文件

---

## 🚀 下一步：发布到 GitHub

### 1. 创建 GitHub 仓库

在 GitHub 上创建新仓库：
- **名称**: `LeMingle-Release`
- **描述**: `Official release repository for LeMingle browser extension - Smart Language Learning Assistant`
- **可见性**: **Public** ✅
- **不要**初始化 README（我们已经有了）

### 2. 推送代码

```bash
cd LeMingle-Release

# 初始化 Git
git init

# 添加所有文件
git add .

# 首次提交
git commit -m "Initial release: LeMingle v1.0.2

- Multi-language README (5 languages)
- Comprehensive installation guide
- User documentation
- Security policy
- Extension package v1.0.2"

# 连接到 GitHub（替换为你的实际仓库 URL）
git remote add origin https://github.com/YOUR_USERNAME/LeMingle-Release.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

### 3. 创建首个 Release

1. **访问仓库** → **Releases** → **Create a new release**

2. **填写信息**：
   - **Tag**: `v1.0.2`
   - **Target**: `main`
   - **Title**: `LeMingle v1.0.2 - Multi-language Support`
   - **Description**: 复制 `RELEASE_TEMPLATE.md` 的内容

3. **上传文件**：
   - 拖拽 `lemingle-v1.0.2.zip` 到附件区域

4. **发布**：
   - 勾选 "Set as the latest release"
   - 点击 "Publish release"

### 4. 验证发布

- [ ] 在无痕模式（未登录）下访问 Release 页面
- [ ] 确认可以下载 zip 文件
- [ ] 测试所有文档链接
- [ ] 检查 README 在首页正确显示

---

## 📋 仓库设置建议

### General Settings
- **Description**: `Official release repository for LeMingle browser extension`
- **Website**: `https://www.lemingle.com`
- **Topics**: 
  - `browser-extension`
  - `language-learning`
  - `chrome-extension`
  - `edge-extension`
  - `education`
  - `multilingual`

### Features
- ✅ Issues（启用 - 用于用户反馈）
- ❌ Wiki（禁用 - 不需要）
- ❌ Projects（禁用 - 不需要）
- ❌ Discussions（禁用 - 使用邮件支持）

### Security
- ✅ Enable Dependabot alerts
- ✅ Security policy（已有 SECURITY.md）

---

## 🔄 后续版本发布流程

每次发布新版本：

### 1. 在主项目中打包
```bash
cd extension
# 更新 manifest.json 和 build.sh 版本号
bash build.sh
```

### 2. 复制到 Release 仓库
```bash
cp lemingle-v1.0.X.zip ../LeMingle-Release/
cd ../LeMingle-Release
```

### 3. 更新文档
- 更新所有 README 中的版本号
- 更新 INSTALLATION.md
- 更新 RELEASE_TEMPLATE.md 的 changelog

### 4. 提交并创建 Release
```bash
git add .
git commit -m "Release v1.0.X"
git push

# 在 GitHub 上创建新 Release
```

---

## 📊 推广建议

### 发布后可以：

1. **更新官网**
   - 添加 GitHub Release 下载链接
   - 在首页显著位置展示

2. **社交媒体**
   - 分享 GitHub 仓库链接
   - 使用不同语言的 README 链接

3. **用户通知**
   - 邮件通知现有用户
   - 网站公告

4. **SEO 优化**
   - GitHub 仓库会被搜索引擎索引
   - 多语言 README 有助于国际化

---

## ⚠️ 重要提醒

### 两个仓库的区别

**私有仓库（lingolette）**：
- 🔒 保持私有
- 包含所有源代码
- 包含后端代码
- 包含开发文档
- 仅团队成员访问

**公开仓库（LeMingle-Release）**：
- 🌐 完全公开
- 只包含打包文件
- 只包含用户文档
- 任何人都可以访问和下载
- 用于产品分发

### 永远不要混淆两个仓库！

---

## 📞 联系方式

- 📧 **邮箱**: qiangkong_ai@163.com
- 🌐 **网站**: https://www.lemingle.com

---

## ✅ 发布前最终检查

在推送到 GitHub 前，确认：

- [ ] ✅ 所有文档中的邮箱是 qiangkong_ai@163.com
- [ ] ✅ 所有文档中的版本号是 v1.0.2
- [ ] ✅ zip 文件存在且大小正确（约 1.5 MB）
- [ ] ✅ 没有任何敏感信息
- [ ] ✅ 所有链接都正确
- [ ] ✅ LICENSE 文件存在
- [ ] ✅ .gitignore 文件存在

---

**一切准备就绪！现在可以发布了！** 🚀✨

详细步骤请参考 `PUBLISH_CHECKLIST.md`
