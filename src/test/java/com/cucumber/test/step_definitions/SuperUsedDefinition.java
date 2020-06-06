package com.cucumber.test.step_definitions;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.openqa.selenium.WebDriver;
import com.cucumber.test.entity.UserAttribute;
import com.cucumber.test.entity.WebUrl;
import com.cucumber.test.helpers.DataHelper;
import com.cucumber.test.helpers.Log;
import com.cucumber.test.modules.SleepFunctionality;

public class SuperUsedDefinition extends SleepFunctionality{
	public WebDriver driver;
	public static List<HashMap<String, String>> datamap = null;
	public static String url = null;
	public static UserAttribute User = null;
	
	public SuperUsedDefinition() {
		Log.info("In super defination");
		datamap = new ArrayList<HashMap<String, String>>();
		WebUrl AppUrl = DataHelper.getUrlFromPropertiesFile();
		url = AppUrl.getTarget_url();
		User = UserAttribute.getUserDetailsFromProperties();
		Log.info("initializing driver");
		try {
			if (Hooks.driver == null)
				Hooks.openBrowser();
		} catch (IOException e) {
			Log.error("Driver not instanciated! ", e);
		}
		driver = Hooks.driver;
		Log.info("Done super defination ");
	}

}
