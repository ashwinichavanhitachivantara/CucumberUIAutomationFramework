package com.cucumber.test.helpers;

import java.io.InputStream;
import java.util.Properties;

import com.cucumber.test.entity.BrowserAttr;
import com.cucumber.test.entity.WebUrl;
import com.cucumber.test.utils.FileUtils;

public class DataHelper {

	private static WebUrl urlFromProperties = null;
	private static Properties properties;
	private static BrowserAttr browserFromProperties = null;

	private static final String TEST_PARAMETER_PROPERTIES = "test_parameter.properties";
	protected static final String App_URL = "target_url";
	private static final String PRO_BROWSER = "pro_browser";

	public static WebUrl getUrlFromPropertiesFile() {
		DataHelper.getReadPropertiesFile();
		// String url = properties.getProperty(TARGET_URL);
		String url = getAppLoginURL();
		urlFromProperties = new WebUrl();
		urlFromProperties.setTarget_url(url);
		return urlFromProperties;
	}

	public static String getAppLoginURL() {
		String baseUrl = null;
		if (System.getenv("TEST_URL") != null) {
			baseUrl = System.getenv("TEST_URL");
			System.out.println("environment >" + baseUrl);
		} else {
			baseUrl = getProperty(App_URL);
			System.out.println("property > " + baseUrl);

		}
		baseUrl = baseUrl.trim();

		if (baseUrl.endsWith("/")) {
			baseUrl = baseUrl.substring(0, baseUrl.length() - 1);
		}
		Log.info("You are in getAppLoginURL method");
		return baseUrl;
	}
	
	
	public static String getProperty(String key) {
		if (properties == null) {
			getUrlFromPropertiesFile();
		}
		return properties.getProperty(key);
	}

	public static void getReadPropertiesFile() {
		if (urlFromProperties == null) {
			InputStream is = null;
			try {
				is = FileUtils.readFileFromClassPath(TEST_PARAMETER_PROPERTIES);
				properties = new Properties();
				properties.load(is);

			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			} finally {
				FileUtils.close(is);
			}
		}
	}

	public static BrowserAttr getBrowserFromPropertiesFile() {
		DataHelper.getReadPropertiesFile();
		String browser = getbrowser();
		browserFromProperties = new BrowserAttr();
		browserFromProperties.setBrowser(browser);
		return browserFromProperties;
	}

	private static String getbrowser() {
		String browser = null;
		System.out.println("DATAHELPER - CALL FOR BROWSER FROM ENV OR PROPERTY");
		if (System.getenv("BROWSER") != null) {
			browser = System.getenv("BROWSER");
			System.out.println("BROWSER from Environment is >" + browser);
		} else {
			browser = getProperty(PRO_BROWSER);
			System.out.println("BROWSER from Property > " + browser);
		}
		return browser;
	}
}
