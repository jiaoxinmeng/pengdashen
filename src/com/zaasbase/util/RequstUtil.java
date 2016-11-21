package com.zaasbase.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class RequstUtil {
	@SuppressWarnings("unchecked")
	public static Map<String, String> getAllParam(HttpServletRequest request) {
		Map<String, String[]> paramMap = request.getParameterMap();
		Map<String, String> map = new HashMap<String, String>();
		for (String key : paramMap.keySet()) {
			if (paramMap.get(key) == null || paramMap.get(key)[0] == "") {
				continue;
			}
			String[] params = paramMap.get(key);
			if (params.length > 1) {
				String val = "";
				for (String str : params) {
					val = val + str + ",";
				}
				val = val.substring(val.length() - 1, val.length());
				map.put(key, val);
			} else {
				map.put(key, params[0]);
			}
		}
		return map;
	}
}
