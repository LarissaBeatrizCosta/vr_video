import 'package:flutter/material.dart';
import '../conts/colors.dart';
part '../components/video_viewer.dart';

///Home of app
class HomeView extends StatelessWidget {
  ///Constructor
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('VR VÍDEO'), backgroundColor: ColorsApp.appBarColor),
      body: _bodyHome(),
    );
  }
}

Widget _bodyHome() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [OutlinedButton(onPressed: () {}, child: Text('Anexar Vídeo 360°'))],
    ),
  );
}
