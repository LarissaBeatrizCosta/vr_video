import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/home.dart';
import '../pages/splash.dart';

// ignore: avoid_classes_with_only_static_members
///Class responsable for routes
class Routes {
  ///FUnction to generate routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _pageRouteBuilder(const SplashView());
      case '/home':
        return _pageRouteBuilder(const HomeView());
      default:
        return _pageRouteBuilder(const Scaffold(body: Text('Página não encontrada')));
    }
  }
}

PageTransition _pageRouteBuilder(Widget child) {
  return PageTransition(
    type: PageTransitionType.fade,
    duration: const Duration(milliseconds: 250),
    child: child,
  );
}
