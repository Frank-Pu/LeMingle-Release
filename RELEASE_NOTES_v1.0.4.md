# LeMingle v1.0.4 Release Notes

**发布日期**: 2024-12-28

---

## 🎉 主要更新

### 发音模块通用化重构

#### 🌍 通用学习模式支持
- **语言无关设计**: 发音模块现在支持任意语言组合，不再限制于英语、中文、法语
- **智能模式检测**:
  - **正向学习**: 网页/文本语言 = 目标语言 → 朗读短语本身
  - **反向学习**: 网页/文本语言 = 释义语言 → 朗读翻译/释义
  - **兜底逻辑**: 其他情况 → 朗读短语本身

#### 🔊 影响的功能模块
1. **悬浮卡片发音** (`contentScript.js`)
   - 点击"🔊 发音"按钮时的语音合成
   - 根据学习模式智能选择发音内容
   
2. **收藏词组发音** (`options.js`)
   - 闪卡复习页面的发音功能
   - 与悬浮卡片使用相同的逻辑

#### 🎯 语言代码兼容性增强
```javascript
// 自动兼容多种格式
'en' → 'en-US'
'zh-simplified' → 'zh-CN'
'zh' → 'zh-CN' (通过标准化处理)
'fr' → 'fr-FR'
'ko' → 'ko-KR'
'ja' → 'ja-JP'
```

---

## 📊 支持的学习场景

| 网页/文本语言 | 目标语言 | 释义语言 | 学习模式 | 发音内容 |
|--------------|---------|---------|---------|---------|
| 英文 | 英文 | 中文 | 正向 | 朗读英文短语 |
| 中文 | 英文 | 中文 | 反向 | 朗读英文翻译 |
| 法语 | 英文 | 中文 | 兜底 | 朗读法语短语 |
| 德语 | 德语 | 英文 | 正向 | 朗读德语短语 |
| 日语 | 英文 | 日语 | 反向 | 朗读英文翻译 |

---

## 🔄 一致性改进

现在三个核心模块使用**完全相同的学习模式判断逻辑**：

1. ✅ **AI 高亮** (`ai-highlight/index.ts`) - v1.0.3 已更新
2. ✅ **悬浮卡片发音** (`contentScript.js`) - v1.0.4 更新
3. ✅ **收藏词组发音** (`options.js`) - v1.0.4 更新

---

## 🛠️ 技术细节

### 标准化语言代码
```javascript
const normalizeLang = (l) => l.split('-')[0].toLowerCase();
const normalizedPageLang = normalizeLang(pageLanguage);
const normalizedTargetLang = normalizeLang(targetLang);
const normalizedExplanationLang = normalizeLang(explanationLang);
```

### 学习模式判断
```javascript
let learningMode;
if (normalizedPageLang === normalizedTargetLang) {
  learningMode = 'forward'; // 正向学习
} else if (normalizedPageLang === normalizedExplanationLang) {
  learningMode = 'reverse'; // 反向学习
} else {
  learningMode = 'fallback'; // 兜底
}
```

### 语音选择策略
```javascript
// 优先选择本地语音（更快、更稳定）
const preferredVoice = voices.find(voice => 
  voice.lang.startsWith(langCode.split('-')[0]) && voice.localService
) || voices.find(voice => 
  voice.lang.startsWith(langCode.split('-')[0])
);
```

---

## 📦 构建信息

- **版本号**: 1.0.4
- **包大小**: 1.5M
- **移除调试日志**: 227 行
- **保留错误追踪**: 69 个 console.error 语句

---

## 🚀 升级指南

### 对于现有用户
1. Chrome 会自动更新扩展
2. 无需手动配置，所有设置保持不变
3. 发音功能将自动使用新的通用逻辑

### 对于新用户
1. 访问 Chrome Web Store 搜索 "LeMingle"
2. 点击"添加至 Chrome"
3. 注册/登录账号
4. 在设置中配置目标语言和释义语言

---

## 🔗 相关更新

- **v1.0.3**: AI 高亮学习模式通用化、闪卡批量同步
- **v1.0.4**: 发音模块学习模式通用化

---

## 📝 反馈与支持

如有问题或建议，请访问：
- 官网: https://www.lemingle.com
- 邮箱: support@lemingle.com

---

**感谢使用 LeMingle！** 🎉
