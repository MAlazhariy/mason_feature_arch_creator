class AppUrl {

  static const devEnv = true;
  static const BASE_URL_Dev = "";
  static const BASE_URL_Live = "";
  static String get BASE_URL => devEnv ? BASE_URL_Dev : BASE_URL_Live;

}
