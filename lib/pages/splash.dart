import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';

import '../conts/colors.dart';
import 'home.dart';

///Splash of app
class SplashView extends StatelessWidget {
  ///Constructor
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      backgroundColor: ColorsApp.appBarColor,
      gifPath: 'assets/images/360.gif',
      gifWidth: 550,
      gifHeight: 550,
      duration: const Duration(milliseconds: 4000),
       nextScreen: const HomeView(),
    );
  }
}
