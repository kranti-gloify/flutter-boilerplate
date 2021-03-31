// Define all the strings to be used in application in this file
// To use - import this file and call required string by:
//```dart
//      Strings.<name>
//```

class Strings {
  Strings._();

  // splash screen
  static const SPLASH_TEXT = 'Assured Excellent Learning For Every Child';

  // intro screen
  static const INTRO_TITLE = 'School Owner App';
  static const INTRO_LIST_TITLE = 'What’s in it for me?';
  static const INTRO_LIST = [
    'Monitor your school’s academic performance',
    'Manage your school’s social media accounts',
    'Track your school’s LEAD orders'
  ];
  static const SCHOOL_NEWS = 'School News';
  static const VIEW_ALL = 'View All';
  static const SOCIAL_MEDIA = 'SOCIAL MEDIA';
  static const MANAGE_SCHOOL = 'Manage school from your fingertips';
  static const MODE_SCHOOL = 'My school is running in ';
  static const MODE = ' mode.';

  //Common
  static const IS_NETWORK_CONNECTED = 'Please check your internet connection';
  static const GET_STARTED = 'Get Started';
  static const LOADING = 'loading...';

  //Login Screem
  static const LOGIN_TITLE = 'Hello school owner,';
  static const LOGIN_SUBTITLE = 'sign in to continue';
  static const LOGIN_INPUT_TITLE = '10 Digit Registered Mobile Number';
  static const LOGIN_BUTTON = 'Get OTP';
  static const LOGIN_TERMS =
      'By continuing, you accept the Terms and Condition';
  static const LOGIN_MOBILE_NOT_REGISTRED =
      'Sorry, this mobile number is not registered with us.';
  static const LOGIN_REACH_TEAM =
      ' Please reach out to your LEAD SPOC or contact customer support @ ';
  static const LOGIN_SUPPORT_MOBILE = '+91-8682833333';
  static const LOGIN_SUPPORT_EMAIL = 'product.support@leadschool.in';

  // Validations
  static const PHONE_NUMBER_VALIDATION = 'Please enter a valid phone number';

  //Otp Screen
  static const OTP_TITLE = 'Enter OTP';
  static const OTP_SENT_NO = '4 digit OTP has been sent to ';
  static const OTP_BUTTON = 'Submit';
  static const OTP_RESEND = 'Resend OTP ';

  //Home
  static const HOME_SELECT = 'Select School';

  static const TITLE = 'Hello school owner,';
  static const DESCRIPTION =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s';

  // it will return the dynamic string
  static String demo(amount) {
    return 'Total amount: $amount';
  }

  static String yourCategoryGenerates(String category) {
    return 'Your $category typically generates';
  }
}
