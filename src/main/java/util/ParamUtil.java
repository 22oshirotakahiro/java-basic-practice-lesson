package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {
	public static int getPoint(double x, String y) {
		int point = 0;
		 switch (y) {
		 case "" :
			 point = (int)Math.floor(x * 0.01);
			 break;
		 case "1" :
			 point = (int)Math.floor(x * 0.02);
			 break;
		 case "2" :
			 point = (int)Math.floor(x * 0.03);
			 break;
		 }
		 return point;
	}
	public static boolean isNullOrEmpty(String str) {
		boolean ble;
		if (str == null || str.isEmpty()) {
			ble = true;
		} else {
			ble = false;
		}
		return ble;
	}

}
