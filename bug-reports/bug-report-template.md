# Bug Report Example

---

## 🐛 BUG-001: Submit Button Non-Responsive on Mobile

**Reported By:** Victor Rashchevskyi  
**Date:** January 17, 2026  
**Status:** Open  
**Severity:** High  
**Priority:** High  

---

### 📝 Summary
The "Submit" button on the registration form does not respond to tap events on mobile devices (Android), preventing users from completing registration.

---

### 🌍 Environment
- **Platform:** Mobile (Android)
- **Device:** Samsung Galaxy S21
- **OS Version:** Android 12
- **Browser:** Chrome 120.0
- **Screen Resolution:** 1080x2400
- **Application Version:** 2.5.3

---

### 📋 Steps to Reproduce

1. Open the application on Android device (Chrome browser)
2. Navigate to the registration page
3. Fill in all required fields:
   - Email: test@example.com
   - Password: Test123!
   - Confirm Password: Test123!
   - Accept Terms checkbox: checked
4. Tap the "Submit" button
5. Observe the result

---

### ✅ Expected Result
- Form validation should trigger
- Data should be submitted to the server
- User should see confirmation message
- User should be redirected to dashboard or confirmation page

---

### ❌ Actual Result
- Button does not respond to tap
- No visual feedback (no color change, no animation)
- No error messages displayed
- Form is not submitted
- User remains on registration page

---

### 📸 Screenshots
[Screenshot would be attached showing the non-responsive button]

---

### 🔍 Additional Information

**Frequency:** Consistent (100% reproduction rate)

**Workaround:** 
- Desktop version works correctly
- Rotating device to landscape mode doesn't help
- Using different browsers (Firefox mobile) has the same issue

**Impact:**
- Blocks new user registration on mobile devices
- Affects approximately 40% of traffic (mobile users)
- Critical business impact

**Root Cause Analysis:**
Preliminary investigation suggests CSS styling may be preventing touch events from reaching the button element. Possible z-index or overlay issue.

---

### 💬 Developer Notes
[To be filled by development team]

---

### ✔️ Verification Steps
Once fixed, verify:
1. Button responds to tap on various Android devices
2. Button provides visual feedback when tapped
3. Form submits successfully
4. No regression on iOS devices
5. Desktop functionality remains unchanged
