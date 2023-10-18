import 'package:localstorage/localstorage.dart';

class LocalStorageManagement {
  static String appLanguage = "appLanguage";
  static String appName = "drawerTest";
  static dynamic saveLocalStorage(key, item) {
    var data = LocalStorage(appName).setItem(key, item);
    return data;
  }

  static dynamic getlocalStorage(key) {
    var data = LocalStorage(appName).getItem(key);
    return data;
  }

  static dynamic clearLocalStorage(key) {
    var data = LocalStorage(appName).clear();
    return data;
  }

  static void removeStorageItem(key) {
    LocalStorage(appName).deleteItem(key);
  }
}
