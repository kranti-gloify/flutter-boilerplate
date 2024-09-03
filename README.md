# Flutter Boilerplate 🚀 

Welcome to the Flutter Boilerplate Project! This repository serves as a comprehensive foundation for building scalable and maintainable Flutter applications. It employs a modular structure to promote code organization, maintainability, and reusability. By integrating `Bloc` for state management, the project enhances code predictability and simplifies data flow. It utilizes `GoRouter` for a flexible and performant routing solution and employs `http` for streamlined API communication. Additionally, the boilerplate integrates Firebase to offer valuable features such as crash analytics, performance monitoring, and push notifications, ensuring a robust development experience.

<img src="./flutter-boilerplate.png" alt="Flutter Boilerplate" style="width:100%;">

# Table of Contents 📚 
1. [Key Features](#key-features-)
2. [Installation](#installation-)
3. [Running the Project](#running-the-project-)
4. [Folder Structure](#folder-structure-)
5. [Coding Best Practices](#coding-best-practices-)
6. [Rules and Guidelines](#rules-and-guidelines-)
7. [Contribution](#contribution-)

# Key Features ✨

- **Modular Structure:** Promotes code organization, maintainability, and reusability.
- **State Management with flutter_bloc:** Enhances code predictability and simplifies data flow.
- **go_router Navigation:** Provides a flexible and performant routing solution.
- **API Services with http:** Streamlines communication with backend APIs.
- **Firebase Integration:** Offers valuable features like crash analytics, performance monitoring, and push notifications.


# Installation ⚙️

1. **Clone the repository:**
   ```bash
   git clone https://github.com/kranti-gloify/flutter-boilerplate
   cd flutter-boilerplate
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Setup Firebase:**
   - Follow the Firebase setup guide to configure the project.
   - Place `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) in their respective folders.



# Running the Project 🚀

1. **Development mode:**
   ```bash
   flutter run
   ```

2. **Build for production:**
   - **Android:**
     ```bash
     flutter build apk --release
     ```
   - **iOS:**
     ```bash
     flutter build ios --release
     ```



# Folder Structure 📂

```
lib/
  core/
    utils.dart             // Common utilities
    constants.dart         // App-wide constants
    error_handler.dart     // Error handling logic
    theme.dart             // Theme and styling
  models/
    model-1.dart        // Model classes
    // Other models
  services/
    api_service.dart       // API service handler
    firebase_service.dart  // Firebase related services
    // Other services
  repositories/
    repository-1.dart   // Repository
    // Other repositories
  bloc/
    app_bloc.dart          // Global BLoC management
  features/
    feature_1/
      bloc/
        feature1_bloc.dart
        feature1_event.dart
        feature1_state.dart
      screens/
        feature1_screen.dart
      // Other feature 1 components
    feature_2/
      // Similar structure for feature 2
    ...
  screens/
    home_screen.dart       // Home screen
    splash_screen.dart     // Splash screen
    // Other top-level screens
  router/
    app_router.dart        // Routing configuration
  widgets/
    error-popup.dart       // Common Widgets
    // Other Common Widgets
  firebase_options.dart    // Firebase configuration
  main.dart                // Application entry point
```


# Coding Best Practices 🛠️ 

- Follow the [Dart and Flutter coding best practices](https://docs.google.com/document/d/1WaUshVIcctoBrU5JrYIvsquJ-NvJ721A4pp2auA2CSE).
- Use meaningful names for files, classes, and methods.
- Maintain a consistent code style and format your code using `flutter format`.


# Rules and Guidelines 📏

1. **Code Quality:**
   - Ensure code is clean, well-commented, and documented.
   - Conduct code reviews and adhere to the project's coding standards.

2. **State Management:**
   - Use `flutter_bloc` for state management.
   - Organize states, events, and BLoCs in respective folders within each feature.

3. **API Services:**
   - Use `api_service.dart` for all HTTP requests.
   - Implement error handling in `error_handler.dart`.

4. **Routing:**
   - Use `go_router` for navigation.
   - Define routes in `app_router.dart`.

5. **Firebase Integration:**
   - Use `firebase_service.dart` for Firebase functionalities.
   - Ensure proper configuration and initialization in `firebase_options.dart`.

6. **Testing:**
   - Write unit and widget tests for all features.
   - Follow the testing guidelines provided in the project documentation.


# Contribution 🤝

We welcome contributions! Please feel free to submit issues or pull requests. Make sure to follow the project's code of conduct and contribution guidelines.