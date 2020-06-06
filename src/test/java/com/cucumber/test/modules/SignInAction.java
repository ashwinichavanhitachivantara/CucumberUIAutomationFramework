package com.cucumber.test.modules;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.Reporter;
import com.cucumber.test.helpers.Log;
import com.cucumber.test.pageobjects.LoginPage;
import com.cucumber.test.step_definitions.SuperUsedDefinition;


public class SignInAction extends SuperUsedDefinition {

	public static void signinValidation(WebDriver driver) throws Exception {
		Log.info("Click action is perfromed on Sign in link");
		//LoginPage.signin_button.click();
		JavascriptExecutor js = (JavascriptExecutor)driver;	
		js.executeScript("arguments[0].click();", LoginPage.signin_button);		
		Thread.sleep(1000);
		driver.navigate().refresh();
		driver.findElement(By.xpath("//*[@class='navbar-inverse mainNavBar desk-disp']//li[2]")).getText();
		Reporter.log("SignIn Action is successfully perfomred");
	}

	public static void execute(WebDriver driver, String username, String password) throws Exception {

		Log.info("Enter username and password");	
		System.out.println("Usename -> " + username);
		System.out.println("Password -> " + password);
		LoginPage.username.sendKeys(username);
		LoginPage.password.sendKeys(password);
		Log.info("signin password:" + LoginPage.username.getAttribute("value"));
		Log.info("signin password:" + LoginPage.password.getAttribute("value"));
		Reporter.log("Username password entered successfully");
		JavascriptExecutor js = (JavascriptExecutor)driver;	
		js.executeScript("arguments[0].click();", LoginPage.signin_button);
		Thread.sleep(3000);
	}
	
	public static void VerifyErrorMessage(WebDriver driver) throws Exception {
		Log.info("Verifying Error Message");
		//LoginPage.signin_button.click();
		WebDriverWait wait = new WebDriverWait(driver, 100);
		wait.until(ExpectedConditions.textToBePresentInElement(LoginPage.ErrorMessage, "Invalid username or password."));
		Assert.assertEquals(LoginPage.ErrorMessage.getText(), "Invalid username or password.");
	}
	
}
