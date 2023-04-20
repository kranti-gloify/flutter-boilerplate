class AppConfig {
  AppConfig._();

// App environment
  static Map flavorData() {
    const env = 'dev';
    if (env == 'dev') {
      return {
        'apiBaseUrl': "https://",
      };
    } else {
      return {
        'apiBaseUrl': "https://",
      };
    }
  }
}
