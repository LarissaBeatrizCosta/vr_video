import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

///Splash of app
class SplashView extends StatelessWidget {
  ///Constructor
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.amber, Colors.amberAccent],
      ),
      gifPath: 'assets/images/rotate.gif',
      gifWidth: 550,
      gifHeight: 550,
      duration: const Duration(milliseconds: 4000),
       nextScreen: const HomeView(),
    );
  }
}
