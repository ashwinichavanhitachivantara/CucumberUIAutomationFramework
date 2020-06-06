$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("SignIn.feature");
formatter.feature({
  "line": 2,
  "name": "Verifying the Sign In functionality",
  "description": "",
  "id": "verifying-the-sign-in-functionality",
  "keyword": "Feature",
  "tags": [
    {
      "line": 1,
      "name": "@Regression"
    }
  ]
});
formatter.before({
  "duration": 28287882496,
  "status": "passed"
});
formatter.scenario({
  "line": 4,
  "name": "Successful Login with Valid Credentials",
  "description": "",
  "id": "verifying-the-sign-in-functionality;successful-login-with-valid-credentials",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 5,
  "name": "Login with correct credentials",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "Verify user is logged in properly",
  "keyword": "Then "
});
formatter.match({
  "location": "SignIn_SD.Login()"
});
formatter.result({
  "duration": 4180716390,
  "status": "passed"
});
formatter.match({
  "location": "SignIn_SD.Verify_loginPage_elements()"
});
formatter.result({
  "duration": 17848806521,
  "error_message": "org.openqa.selenium.NoSuchElementException: Unable to locate element: //*[@class\u003d\u0027navbar-inverse mainNavBar desk-disp\u0027]//li[2]\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027DESKTOP-SC7E1SL\u0027, ip: \u0027192.168.43.221\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027x86\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_192\u0027\nDriver info: org.openqa.selenium.firefox.FirefoxDriver\nCapabilities {acceptInsecureCerts: true, browserName: firefox, browserVersion: 77.0.1, javascriptEnabled: true, moz:accessibilityChecks: false, moz:buildID: 20200602222727, moz:geckodriverVersion: 0.26.0, moz:headless: false, moz:processID: 13656, moz:profile: C:\\Users\\Shubham\\AppData\\Lo..., moz:shutdownTimeout: 60000, moz:useNonSpecCompliantPointerOrigin: false, moz:webdriverClick: true, pageLoadStrategy: normal, platform: WINDOWS, platformName: WINDOWS, platformVersion: 10.0, rotatable: false, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: e596121c-9683-42e0-8151-cd99db8eb0a1\n*** Element info: {Using\u003dxpath, value\u003d//*[@class\u003d\u0027navbar-inverse mainNavBar desk-disp\u0027]//li[2]}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat java.lang.reflect.Constructor.newInstance(Unknown Source)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementByXPath(RemoteWebDriver.java:428)\r\n\tat org.openqa.selenium.By$ByXPath.findElement(By.java:353)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat com.cucumber.test.modules.SignInAction.signinValidation(SignInAction.java:24)\r\n\tat com.cucumber.test.step_definitions.SignIn_SD.Verify_loginPage_elements(SignIn_SD.java:21)\r\n\tat ✽.Then Verify user is logged in properly(SignIn.feature:6)\r\n",
  "status": "failed"
});
formatter.write("Current Page URL is https://devcapitasearchapp.z19.web.core.windows.net/auth/login");
formatter.embedding("image/png", "embedded0.png");
formatter.after({
  "duration": 6172298200,
  "status": "passed"
});
formatter.before({
  "duration": 15966400082,
  "status": "passed"
});
formatter.scenario({
  "line": 8,
  "name": "Verify Error message when Login with Invalid credentials",
  "description": "",
  "id": "verifying-the-sign-in-functionality;verify-error-message-when-login-with-invalid-credentials",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 9,
  "name": "Login with correct credentials",
  "keyword": "Given "
});
formatter.step({
  "line": 10,
  "name": "Verify error message",
  "keyword": "Then "
});
formatter.match({
  "location": "SignIn_SD.Login()"
});
formatter.result({
  "duration": 3892439428,
  "status": "passed"
});
formatter.match({
  "location": "SignIn_SD.Verify_TPS_uploapform_isdisplayed()"
});
formatter.result({
  "duration": 128217479,
  "status": "passed"
});
formatter.after({
  "duration": 4024406647,
  "status": "passed"
});
});