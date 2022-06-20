# flutter_boilerplate

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- What is BLoC? (Business logic components (BLoC) allow you to separate the business logic from the UI. Writing code in BLoC makes it easier to write and reuse tests.In simple terms, BLoC accepts a stream of events, processes the data based on events, and produces the output as states. )
- What is Events? (Events tell BLoC to do something. An event can be fired from anywhere, such as from a UI widget. External events, such as changes in network connectivity, changes in sensor readings, etc.)
- What is States? (States represent the information to be processed by any widget. A widget changes itself based on the state.)
- What is Cubit ? (Cubit is a simpler version of the BLoC pattern. It eliminates the need to write events. Cubit exposes direct functions, which can result in appropriate states. Writing a Cubit instead of BLoC also reduces boilerplate code, making the code easier to read.)
- How to manage state with Bloc? 
- First add bloc package (https://pub.dev/packages/flutter_bloc/install) & equatable package (https://pub.dev/packages/equatable/install) in pubspec.yaml file.
- In, app.dart file Wrap Material app with MutiBlocProvider where you can add one after another bloC inside providers and pass the instance of respository to the bloC class.
- Create a new folder for each bloc and each bloc contains its events and state.
- Now you can build or update the rquired widget by Wrap the Widget with Blocbuilder where you can render your required widget accoding to the requirement inside builder method.
- For details description of bloC, you can refer to this link (https://pub.dev/packages/flutter_bloc)