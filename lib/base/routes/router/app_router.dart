import 'package:base_flutter_bloc/screens/home/bloc/home_bloc.dart';
import 'package:base_flutter_bloc/screens/splash/view/splash_screen.dart';
import 'package:base_flutter_bloc/utils/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../screens/home/view/home_screen.dart';

class AppRouter {
  AppRouter._();

  /*
   * generateRoute method generates route to the specific page.
   * It takes RouteSettings object as input parameter, and based on settings.name and generates
   * a new route to the screen.
   *
   * It can also take arguments passed in navigator object, like
   * var screenData = settings.arguments as String;
   * and pass to the screen in page route builder.
   * */
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return buildRoute(screen: const SplashScreen(), routeSettings: settings);
      case homeRoute:
        return buildRoute(screen: BlocProvider(create: (_) => HomeBloc(),
        child: const HomeScreen()), routeSettings: settings);
      /// Default Route
      default:
        return errorRoute(settings);
    }
  }

  /*
  * util method to return page route
  * if isCupertino is true, it generates Cupertino Page Route, else it generates Material Page Route
  * */
  static PageRoute buildRoute({
    required Widget screen,
    RouteSettings? routeSettings,
    bool isCupertino = false,
  }) {
    return (isCupertino == true)
        ? CustomCupertinoPageRoute(
            builder: (_) => screen, settings: routeSettings)
        : CustomPageRoute(builder: (_) => screen, settings: routeSettings);
    // return ;
  }

  /*
   * errorRoute method to generate route to No Page Found Screen, when navigation error occurs.
   * errorRoute is called when an unknown route is passed to navigator object.
   * */
  static Route<dynamic> errorRoute(RouteSettings settings) {
    return CustomPageRoute(
        builder: (_) => const Scaffold(
              body: Center(
                child: Text('Page not found!'),
              ),
            ));
  }

  /// -----------------------------------------------App Routes----------------------------------------------- ///

  /*
  * Custom static route names for all pages in the app
  * */
  static const String splashRoute = '/splash';
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
}
