package com.cucumber.test.pageobjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class DashboardPage extends BaseClass {

	public DashboardPage(WebDriver driver) {
		super(driver);
	}

	@FindBy(how = How.XPATH, xpath = "//*[@id='username']")
	public static WebElement username;

	@FindBy(how = How.XPATH, xpath = "//*[@placeholder='Password']")
	public static WebElement password;

	@FindBy(how = How.XPATH, xpath = "//*[@value='Submit']")
	public static WebElement signin_button;
	
	@FindBy(how = How.XPATH, xpath = "//*[@id=\"login\"]/form/div[3]/div/div")
	public static WebElement ErrorMessage;

}