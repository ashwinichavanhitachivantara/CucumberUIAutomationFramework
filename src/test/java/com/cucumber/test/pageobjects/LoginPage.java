package com.cucumber.test.pageobjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class LoginPage extends BaseClass {

	public LoginPage(WebDriver driver) {
		super(driver);
	}

	@FindBy(how = How.CSS, css = "#r-1-input")
	public static WebElement username;

	@FindBy(how = How.CSS, css = "#r-2-input")
	public static WebElement password;

	@FindBy(how = How.CSS, css = ".MuiButton-contained > span:nth-child(1)")
	public static WebElement signin_button;
	
	@FindBy(how = How.XPATH, xpath = "//*[@id=\"root\"]/main/div[1]/div/div[2]/div")
	public static WebElement ErrorMessage;

}