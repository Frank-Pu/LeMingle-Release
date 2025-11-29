#!/bin/bash

echo "🔍 验证 LeMingle-Release 仓库..."
echo ""

# 检查必需文件
echo "📁 检查必需文件..."
files=(
    "README.md"
    "README_EN.md"
    "README_ZH_TW.md"
    "README_KO.md"
    "README_FR.md"
    "LICENSE"
    "INSTALLATION.md"
    "SETUP_GUIDE.md"
    "CONTRIBUTING.md"
    "SECURITY.md"
    "lemingle-v1.0.2.zip"
    ".gitignore"
)

missing=0
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file"
    else
        echo "❌ $file - 缺失！"
        missing=$((missing + 1))
    fi
done

echo ""

# 检查 zip 文件大小
if [ -f "lemingle-v1.0.2.zip" ]; then
    size=$(ls -lh lemingle-v1.0.2.zip | awk '{print $5}')
    echo "📦 ZIP 文件大小: $size"
fi

echo ""

# 检查敏感信息
echo "🔒 检查敏感信息..."
sensitive_patterns=(
    "sk_live_"
    "sk_test_"
    "whsec_"
    "service_role"
    "eyJ"
    "SUPABASE_SERVICE"
)

found_sensitive=0
for pattern in "${sensitive_patterns[@]}"; do
    if grep -r "$pattern" . --exclude-dir=.git --exclude="*.zip" > /dev/null 2>&1; then
        echo "⚠️  发现可疑内容: $pattern"
        found_sensitive=$((found_sensitive + 1))
    fi
done

if [ $found_sensitive -eq 0 ]; then
    echo "✅ 未发现敏感信息"
fi

echo ""

# 检查邮箱
echo "📧 检查联系邮箱..."
correct_email="qiangkong_ai@163.com"
if grep -r "$correct_email" . --exclude-dir=.git --exclude="*.zip" --exclude="verify.sh" > /dev/null 2>&1; then
    echo "✅ 邮箱正确: $correct_email"
else
    echo "❌ 未找到正确的邮箱地址"
fi

echo ""

# 总结
echo "📊 验证总结"
echo "============"
if [ $missing -eq 0 ] && [ $found_sensitive -eq 0 ]; then
    echo "✅ 所有检查通过！可以发布了！"
    echo ""
    echo "下一步："
    echo "1. git init"
    echo "2. git add ."
    echo "3. git commit -m 'Initial release: LeMingle v1.0.2'"
    echo "4. git remote add origin YOUR_REPO_URL"
    echo "5. git push -u origin main"
else
    echo "⚠️  发现 $missing 个缺失文件"
    echo "⚠️  发现 $found_sensitive 个敏感信息"
    echo "请修复后再发布！"
fi
