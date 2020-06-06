package com.cucumber.test.step_definitions;

import java.net.MalformedURLException;
import java.util.Properties;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import com.cucumber.test.entity.BrowserAttr;
import com.cucumber.test.entity.WebUrl;
import com.cucumber.test.helpers.DataHelper;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

public class Hooks extends DataHelper{
	private static String OS = System.getProperty("os.name").toLowerCase();
	public static WebDriver driver;
	public static String openbrowser;

	@Before
	/**
	 * Delete all cookies at the start of each scenario to avoid shared state
	 * between tests
	 */

	public static void openBrowser() throws MalformedURLException {
		BrowserAttr browser = DataHelper.getBrowserFromPropertiesFile();
		openbrowser = browser.getBrowser();

		if (OS.equalsIgnoreCase("linux")) {
			System.out.println("You are testing it on Linux");
			if (openbrowser.equalsIgnoreCase("chrome")) {
				// certification for chrome
				System.out.println("Called openBrowser");
				DesiredCapabilities capability = DesiredCapabilities.chrome();
				capability.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				System.setProperty("webdriver.chrome.driver", "/usr/bin/chromedriver");
				// System.setProperty("org.apache.commons.logging.Log",
				// "org.apache.commons.logging.impl.Jdk14Logger");
				driver = new ChromeDriver();
				driver.manage().deleteAllCookies();
				// driver.manage().window().maximize();
				Dimension dim = new Dimension(1366, 768);
				driver.manage().window().setSize(dim);

			}
			if (openbrowser.equalsIgnoreCase("firefox")) {
				// certification for firefox
				System.out.println("Called openBrowser for firefox");
				System.setProperty("webdriver.gecko.driver", "/usr/bin/geckodriver");
				DesiredCapabilities capabilities = DesiredCapabilities.firefox();
				capabilities = DesiredCapabilities.firefox();
				capabilities.setCapability("marionette", true);
				driver = new FirefoxDriver(capabilities);
				Dimension dim = new Dimension(1366, 768);
				driver.manage().window().setSize(dim);
				System.out.println("firefox opened");

			}
			if (openbrowser.equalsIgnoreCase("ie")) {
				// certification for Internet Explorer
				System.out.println("Called openBrowser for internet explorer");
				DesiredCapabilities capabilities = DesiredCapabilities.internetExplorer();
				System.setProperty("webdriver.ie.driver", "/usr/bin/IEDriverServer");
				capabilities = DesiredCapabilities.internetExplorer();
				capabilities.setJavascriptEnabled(true);
				capabilities.setCapability(InternetExplorerDriver.IGNORE_ZOOM_SETTING, true);
				capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				capabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS,
						true);
				capabilities.setCapability(InternetExplorerDriver.IE_ENSURE_CLEAN_SESSION, true);
				capabilities.setCapability(InternetExplorerDriver.ENABLE_ELEMENT_CACHE_CLEANUP, true);
				capabilities.setCapability(InternetExplorerDriver.NATIVE_EVENTS, false);
				capabilities.setCapability("allow-blocked-content", true);
				capabilities.setCapability("allowBlockedContent", true);
				
				capabilities.setCapability("unexpectedAlertBehaviour", "accept");
				capabilities.setCapability("ignoreProtectedModeSettings", true);
				capabilities.setCapability("disable-popup-blocking", true);
				capabilities.setCapability("enablePersistentHover", true);
				driver = new InternetExplorerDriver(capabilities);
				System.out.println("IE opened");

			}
			if (openbrowser.equalsIgnoreCase("microsoft_edge")) {
				// certification for Microsoft Edge
				System.out.println("Called openBrowser for microsoft edge");
				System.setProperty("webdriver.edge.driver", "/usr/bin/MicrosoftWebDriver.exe");
				// Start Edge Session
				driver = new EdgeDriver();
				System.out.println("microsoft_edge opened");
			}
			// else
			// {
			// System.out.println("Invalid Browser");
			// }
		} else if(OS.contains("win")) {
			System.out.println("You are testing it on Windows");
			if (openbrowser.equalsIgnoreCase("chrome")) {
				System.out.println("Called openBrowser");
				DesiredCapabilities capability = DesiredCapabilities.chrome();
				capability.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				System.setProperty("webdriver.chrome.driver",
						"D:\\chromedriver.exe");
				driver = new ChromeDriver();
				driver.manage().deleteAllCookies();
				Dimension dim = new Dimension(1366, 768);
				driver.manage().window().setSize(dim);

			}
			if (openbrowser.equalsIgnoreCase("firefox")) {
				System.out.println("Called openBrowser for firefox");
				System.setProperty("webdriver.gecko.driver",
						"D:\\geckodriver.exe");
				DesiredCapabilities capabilities = DesiredCapabilities.firefox();
				capabilities = DesiredCapabilities.firefox();
				capabilities.setCapability("marionette", true);
				driver = new FirefoxDriver(capabilities);
				Dimension dim = new Dimension(1366, 768);
				driver.manage().window().setSize(dim);
				System.out.println("firefox opened");
				driver.get(getAppLoginURL());
			}
			if (openbrowser.equalsIgnoreCase("ie")) {

				System.out.println("Called openBrowser for internet explorer");
				DesiredCapabilities capabilities = DesiredCapabilities.internetExplorer();
				System.setProperty("webdriver.ie.driver",
						"");
				capabilities = DesiredCapabilities.internetExplorer();
				capabilities.setJavascriptEnabled(true);
				capabilities.setCapability(InternetExplorerDriver.IGNORE_ZOOM_SETTING, true);
				capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				capabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS,
						true);
				capabilities.setCapability(InternetExplorerDriver.IE_ENSURE_CLEAN_SESSION, true);
				capabilities.setCapability(InternetExplorerDriver.ENABLE_ELEMENT_CACHE_CLEANUP, true);
				capabilities.setCapability(InternetExplorerDriver.NATIVE_EVENTS, false);
				capabilities.setCapability("allow-blocked-content", true);
				capabilities.setCapability("allowBlockedContent", true);
				driver = new InternetExplorerDriver(capabilities);
				System.out.println("IE opened");

			}
			if (openbrowser.equalsIgnoreCase("microsoft_edge")) {
				System.out.println("Called openBrowser for microsoft edge");
				System.setProperty("webdriver.edge.driver",
						"");
				// Start Edge Session
				driver = new EdgeDriver();
				System.out.println("microsoft_edge opened");
			}
		}
		else
		{
			System.out.println("You are testing it on MAC");
			if (openbrowser.equalsIgnoreCase("chrome")) {
				System.out.println("Called openBrowser");
				//DesiredCapabilities capability = DesiredCapabilities.chrome();
				//capability.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				System.setProperty("webdriver.chrome.driver","/Users/sdeshmukh/Downloads/chromedriver");
				System.setProperty("org.apache.commons.logging.Log","org.apache.commons.logging.impl.Jdk14Logger");
				driver = new ChromeDriver();
				driver.manage().deleteAllCookies();
				driver.manage().window().maximize();
				Dimension dim = new Dimension(1366, 768);
				driver.manage().window().setSize(dim);

			}
			if (openbrowser.equalsIgnoreCase("firefox")) {
				System.out.println("Called openBrowser");
				//DesiredCapabilities capability = DesiredCapabilities.chrome();
				//capability.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				System.setProperty("webdriver.gecko.driver","/Users/sdeshmukh/Downloads/geckodriver");
				System.setProperty("org.apache.commons.logging.Log","org.apache.commons.logging.impl.Jdk14Logger");
				driver = new FirefoxDriver();
				driver.manage().deleteAllCookies();
				driver.manage().window().maximize();
				Dimension dim = new Dimension(1366, 768);
				driver.manage().window().setSize(dim);

			}
		}
	}

	@After
	/**
	 * Embed a screenshot in test report if test is marked as failed
	 */

	public void embedScreenshot(Scenario scenario) {

		if (scenario.isFailed()) {
			try {
				scenario.write("Current Page URL is " + driver.getCurrentUrl());
				byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
				scenario.embed(screenshot, "image/png");
			} catch (WebDriverException somePlatformsDontSupportScreenshots) {
				System.err.println(somePlatformsDontSupportScreenshots.getMessage());
			}

		} 
		
		driver.quit();
	}

	public String getReportConfigPath() {
		Properties properties = new Properties();
		String reportConfigPath = properties.getProperty("reportConfigPath");
		if (reportConfigPath != null)
			return reportConfigPath;
		else
			throw new RuntimeException(
					"Report Config Path not specified in the Configuration.properties file for the Key:reportConfigPath");
	}
}
