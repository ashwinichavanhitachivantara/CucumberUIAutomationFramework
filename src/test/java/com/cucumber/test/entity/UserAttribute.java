package com.cucumber.test.entity;

import java.io.InputStream;
import java.util.Properties;
import com.cucumber.test.utils.FileUtils;

public class UserAttribute {

	String user_name;
	String user_password;


	public String getUsername() {
		return user_name;
	}

	public void setUsername(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return user_password;
	}

	public void setPassword(String user_password) {
		this.user_password = user_password;
	}

	private static Properties properties;
	private static UserAttribute User = null;
	private static final String TEST_PARAMETER_PROPERTIES = "test_parameter.properties";
	private static final String USER_NAME = "user_name";
	private static final String USER_PASSWORD = "user_password";

	public static UserAttribute getUserDetailsFromProperties() {

		UserAttribute.getReadPropertiesFile();

		String user_name = properties.getProperty(USER_NAME);
		String user_password = properties.getProperty(USER_PASSWORD);
		User = new UserAttribute();
		User.setUsername(user_name);
		User.setPassword(user_password);
		return User;
	}

	public static void getReadPropertiesFile() 
	{
		if (User == null) {
			InputStream is = null;
			try {
				is = FileUtils.readFileFromClassPath(TEST_PARAMETER_PROPERTIES);
				properties = new Properties();
				properties.load(is);
				// System.out.println("In READ");

			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			} finally {
				FileUtils.close(is);
			}
		}
	}

}
