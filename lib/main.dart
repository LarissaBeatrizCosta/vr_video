import 'package:flutter/material.dart';
import 'package:vr_video/conts/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VR Video',
      theme: AppTheme.themeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
