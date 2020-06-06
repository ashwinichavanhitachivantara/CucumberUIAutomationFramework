package com.cucumber.test.step_definitions;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/features", plugin = { "pretty", "json:target/reports/index.json",
		"html:target/reports", "junit:target/reports/Cucumber.xml" }, monochrome = true, tags = { "@Regression" }
)

public class RunCukesTest {

}
