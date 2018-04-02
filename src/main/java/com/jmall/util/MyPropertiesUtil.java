package com.jmall.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MyPropertiesUtil {

	public static String getMyProperty(String properties, String key) {

		Properties properties2 = new Properties();

		InputStream resourceAsStream = MyPropertiesUtil.class.getClassLoader().getResourceAsStream(properties);

		try {
			properties2.load(resourceAsStream);
		} catch (IOException e) {
			e.printStackTrace();
		}

		String property = properties2.getProperty(key);

		return property;

	}

}
