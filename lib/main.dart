import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'conts/theme.dart';
import 'providers/home.dart';
import 'routes/routes.dart';

void main() {
  runApp(Provider(create: (_) => HomeState(), child: const MyApp()));
}

///Class responsable for main app
class MyApp extends StatelessWidget {
  ///Class responsable for main app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VR Video',
      theme: AppTheme.themeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

