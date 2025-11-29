# 🔒 Security Policy

## 🛡️ Reporting Security Vulnerabilities

We take the security of LeMingle seriously. If you discover a security vulnerability, please help us protect our users by reporting it responsibly.

### How to Report

**DO NOT** create a public GitHub issue for security vulnerabilities.

Instead, please email us directly:
- **Email**: qiangkong_ai@163.com
- **Subject**: [Security] Brief description

### What to Include

Please provide as much information as possible:

1. **Type of vulnerability**
   - XSS, CSRF, injection, etc.
   
2. **Affected components**
   - Extension version
   - Browser and version
   - Operating system

3. **Steps to reproduce**
   - Detailed steps
   - Proof of concept (if applicable)
   - Screenshots or videos

4. **Potential impact**
   - What data could be exposed?
   - What actions could be performed?

5. **Suggested fix** (optional)
   - If you have ideas on how to fix it

---

## 🔐 Security Measures

LeMingle implements several security measures:

### Extension Security
- ✅ Content Security Policy (CSP)
- ✅ Minimal permissions requested
- ✅ Secure communication with backend
- ✅ No eval() or inline scripts
- ✅ Input sanitization

### Backend Security
- ✅ Supabase Row Level Security (RLS)
- ✅ JWT authentication
- ✅ HTTPS encryption
- ✅ API rate limiting
- ✅ Webhook signature verification

### Data Privacy
- ✅ Local-first storage
- ✅ Optional cloud sync
- ✅ No tracking without consent
- ✅ GDPR compliant
- ✅ Data encryption at rest

---

## 🔄 Security Updates

We regularly update LeMingle to address security issues:

- **Critical vulnerabilities**: Patched within 24-48 hours
- **High severity**: Patched within 1 week
- **Medium/Low severity**: Included in regular updates

Users will be notified of security updates through:
- Extension auto-update (Chrome/Edge)
- Email notifications (for registered users)
- Release notes

---

## 🏆 Responsible Disclosure

We appreciate security researchers who:
- Report vulnerabilities privately
- Give us reasonable time to fix issues
- Don't exploit vulnerabilities

We commit to:
- Acknowledge your report within 48 hours
- Keep you updated on our progress
- Credit you in release notes (if desired)
- Consider bug bounties for significant findings

---

## 📞 Contact

For security concerns:
- **Email**: qiangkong_ai@163.com
- **Response time**: Within 48 hours

For general support:
- **Website**: [lemingle.com](https://www.lemingle.com)

---

Thank you for helping keep LeMingle and our users safe! 🛡️
