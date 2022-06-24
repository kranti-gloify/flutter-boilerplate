import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/bloc/news_bloc.dart';
import 'package:flutter_boilerplate/core/services/news/news_services.dart';
import 'package:flutter_boilerplate/routes/routes.dart';
import 'package:flutter_boilerplate/themes/themes.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NewsBloc(newsRepository: NewsService()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Boilerplate',
        debugShowCheckedModeBanner: false,
        theme: Themes.buildLightTheme(),
        initialRoute: Routes.initialRoute,
        routes: Routes.buildRoutes,
        onUnknownRoute:
            Routes.unknownRoute as Route<dynamic>? Function(RouteSettings)?,
      ),
    );
  }
}
