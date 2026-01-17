# Login Functionality - Test Cases

## TC-001: Successful Login with Valid Credentials
**Objective:** Verify user can login with correct username and password

**Preconditions:** 
- User account exists in the system
- User is on the login page

**Test Steps:**
1. Enter valid username in the "Username" field
2. Enter valid password in the "Password" field
3. Click "Login" button

**Expected Result:**
- User is successfully authenticated
- User is redirected to the dashboard/home page
- Welcome message displays username
- Session is created

**Priority:** Critical  
**Test Type:** Functional

---

## TC-002: Login with Invalid Password
**Objective:** Verify error handling for incorrect password

**Preconditions:** User is on the login page

**Test Steps:**
1. Enter valid username
2. Enter invalid password
3. Click "Login" button

**Expected Result:**
- Error message "Invalid username or password" is displayed
- User remains on login page
- Password field is cleared
- No session is created

**Priority:** High  
**Test Type:** Negative Testing

---

## TC-003: Login with Empty Fields
**Objective:** Verify validation for empty credentials

**Test Steps:**
1. Leave username field empty
2. Leave password field empty
3. Click "Login" button

**Expected Result:**
- Validation error appears: "Username is required"
- Validation error appears: "Password is required"
- Login button remains inactive or shows errors

**Priority:** High  
**Test Type:** Validation

---

## TC-004: Remember Me Functionality
**Objective:** Verify "Remember Me" checkbox works correctly

**Test Steps:**
1. Enter valid credentials
2. Check "Remember Me" checkbox
3. Click "Login"
4. Close browser completely
5. Reopen browser and navigate to application

**Expected Result:**
- User remains logged in after browser restart
- Session persists until manual logout

**Priority:** Medium  
**Test Type:** Functional
