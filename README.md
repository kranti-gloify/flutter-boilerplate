Flutter Boilerplate

Coding Best Practices
Follow the link to read on coding best practices for dart and flutter Coding Best Practices

Folder Structure and Naming Convention
screens
Naming Convention screens / [feature] / [feature].dart (or)

Includes Top level feature related dart files.
Should be root level / parent file.
No widgets be created inside the screens.
===

widgets
Contains, 1. common 2. [feature] related widgets

Naming Convention widgets / [common] / [component].dart widgets / [widget] / [feature] / [feature_based_component].dart

Common folder Should contain app level widgets.
Create other [feature] level widgets in [feature] based folders.
===

core
Contains, 1. Models 2. Services 3. exceptions

Naming Convention Models - core / models / [model_name_model].dart Services - core / services / [feature] / [service_name_service].dart Exceptions - core / exceptions / [exception_name_exception].dart

Always model for data modeling.
Use services for making API Calls.
Create own custom Exception always.
Create feature based services.
===

bloc
Naming Convention bloc / [feature] / [feature_bloc].dart

Should create bloc widget for data orchestration.
Always use bloc when handling FutureBuilder / StreamBuilder.
Always use bloc for making API calls.
===

resources
Contains, 1. images.dart 2. strings.dart 3. Any common resource(might be added in future)

Naming Convention resources / [resource_name].dart

Includes constant strings
Includes image paths for easy access
===

routes
Naming Convention routes / [route_name].dart

===

themes
Contains, 1. color.dart 2. global_styles.dart 3. themes.dart 4. Any other common style related files(might be added in future)

Includes common colors, global styles and common Typography.
===

utils
utils / [util_name].dart

Includes common utils needed by the application.(Ex: Dollar conversion, date conversion).