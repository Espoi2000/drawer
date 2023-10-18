import 'package:shared_preferences/shared_preferences.dart';

class SharePreferences {
  static String appLanguage = "appLanguage";
  static String appName = "drawerTest";
  // saving data from SF

  static saveAppLanguage({required String language}) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(appLanguage, language);
  }

  //  getting the data from sf
  static getAppLanguage() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(appLanguage);
  }
}
