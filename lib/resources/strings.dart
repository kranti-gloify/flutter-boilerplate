// Define all the strings to be used in application in this file
// To use - import this file and call required string by:
//```dart
//      Strings.<name>
//```

class Strings {
  Strings._();

  // splash screen
  static const SPLASH_TEXT = 'Boilerplate Flutter App built by Gloify';

  // intro screen
  static const INTRO_TITLE = 'Boilerplate App';
  static const INTRO_LIST_TITLE = 'What’s in it for me?';
  static const INTRO_LIST = [
    'Get started with a basic flutter app',
    'With built in architecture',
    'Efficient and has best practices'
  ];
  static const GET_STARTED = 'Get Started';

  // it will return the dynamic string
  static String demo(amount) {
    return 'Total amount: $amount';
  }

  static String yourCategoryGenerates(String category) {
    return 'Your $category typically generates';
  }
}
