package com.cucumber.test.step_definitions;

import org.openqa.selenium.support.PageFactory;

import com.cucumber.test.modules.SignInAction;
import com.cucumber.test.pageobjects.LoginPage;
import com.cucumber.test.pageobjects.DashboardPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class SignIn_SD extends SuperUsedDefinition{
	
	public SignIn_SD() {
		super();
	}
	
	@Then("^Verify user is logged in properly$")
	public void Verify_loginPage_elements() throws Throwable {
		PageFactory.initElements(driver, DashboardPage.class);
		SignInAction.signinValidation(driver);
	}
	
	
	@Given("^Login with correct credentials$")
	public void Login() throws Throwable {
		PageFactory.initElements(driver, LoginPage.class);
		SignInAction.execute(driver, User.getUsername(), User.getPassword());
	}
	
	@Then("^Verify error message$")
	public void Verify_TPS_uploapform_isdisplayed() throws Throwable {
		PageFactory.initElements(driver, LoginPage.class);
		SignInAction.VerifyErrorMessage(driver);
	}

}
