# LeMingle v1.0.5 Release Notes

**发布日期**: 2026-01-01

---

## 🎉 主要更新

### 高亮样式系统优化

#### ✨ 炫酷高亮样式修复
- **修复问题**: "Cool" 渐变高亮样式在初始页面加载时未正确应用
- **根本原因**: `applyHighlightStyle()` 函数在 AI 高亮路径中缺失调用
- **解决方案**: 
  - 在 `applyHighlightsToNode()` 函数中添加样式应用逻辑
  - 确保所有三个高亮创建路径都正确调用样式函数
  - 同步高亮、异步高亮、AI 检测高亮现在都能正确应用用户选择的样式

#### 🎨 高亮样式选项优化
- **新增**: 完善的中英文双语描述文案
  - **经典样式**: "传统下划线样式，简洁清晰" / "Traditional underline style, clean and clear"
  - **炫酷样式**: "渐变弥散光效，视觉柔和" / "Gradient diffused glow, visually soft"
- **改进**: 更清晰的视觉对比说明，帮助用户选择合适的高亮风格

---

## 🔧 网站偏好设置修复

### 跳过网站高亮问题修复
- **修复问题**: 设置为"跳过"或"不高亮"的网站仍会在首次加载时执行高亮
- **根本原因**: `runHighlight()` 函数在检查网站偏好前就执行了收藏高亮
- **解决方案**:
  - 在 `runHighlight()` 函数开始处添加早期检查
  - 如果网站设置为 `always_off`，立即返回，跳过所有高亮操作
  - 确保收藏高亮和 AI 高亮都遵守用户的网站偏好设置

---

## 🌐 AI 模型路由机制说明

### 智能地理位置路由
LeMingle 使用基于地理位置的智能路由系统，自动为用户选择最优的 AI 服务端点：

#### AI 高亮功能
- **中国用户**:
  - 主端点: 腾讯云函数（上海）→ **豆包模型**
  - 降级端点: Supabase Edge Function（新加坡）→ **Gemini**
- **全球用户**:
  - 主端点: Supabase Edge Function（新加坡）→ **Gemini**

#### 翻译功能
- 所有用户统一使用 Supabase 翻译端点

#### 特性
- ✅ 自动地理位置检测（24小时缓存）
- ✅ 智能降级策略（中国用户在主端点失败时自动切换）
- ✅ 性能监控和响应时间记录

---

## 🐛 Bug 修复

1. **高亮样式应用**
   - 修复 AI 高亮路径中缺失 `applyHighlightStyle()` 调用
   - 修复初始页面加载时样式不一致问题

2. **网站偏好设置**
   - 修复"跳过"网站仍会执行高亮的问题
   - 确保所有高亮类型（收藏高亮、AI 高亮）都遵守网站偏好

3. **样式一致性**
   - 确保用户选择的高亮样式在所有场景下都能正确应用
   - 新样式覆盖旧样式，保持一致性

---

## 📦 构建信息

- **版本号**: 1.0.5
- **包大小**: ~1.5M
- **移除调试日志**: 230 行
- **保留错误追踪**: 69 个 console.error 语句

---

## 🔄 技术改进

### 高亮创建路径
现在所有三个高亮创建路径都正确应用样式：

1. ✅ **同步高亮** (`wrapHighlights()`) - line 525
2. ✅ **异步高亮** (`wrapHighlightsAsync()`) - line 695
3. ✅ **AI 检测高亮** (`applyHighlightsToNode()`) - line 1757

### 网站偏好检查
```javascript
// Step 0: Check site preferences first - if always_off, skip everything
const domain = location.hostname;
const pref = SITE_PREFERENCES[domain];

if (pref === 'always_off') {
  console.log('[LeMingle] Site is set to always_off, skipping all highlighting');
  return;
}
```

---

## 🚀 升级指南

### 对于现有用户
1. Chrome 会自动更新扩展到 v1.0.5
2. 无需手动配置，所有设置保持不变
3. 高亮样式将正确应用，网站偏好设置将立即生效

### 对于新用户
1. 访问 Chrome Web Store 搜索 "LeMingle"
2. 点击"添加至 Chrome"
3. 注册/登录账号
4. 在设置中选择您喜欢的高亮样式（经典/炫酷）
5. 配置目标语言和释义语言

---

## 🔗 相关更新

- **v1.0.3**: AI 高亮学习模式通用化、闪卡批量同步
- **v1.0.4**: 发音模块学习模式通用化
- **v1.0.5**: 高亮样式修复、网站偏好优化、AI 路由说明

---

## 📝 反馈与支持

如有问题或建议，请访问：
- 官网: https://www.lemingle.com
- GitHub: https://github.com/LeMingle
- 邮箱: support@lemingle.com

---

**感谢使用 LeMingle！** 🎉
