import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vr_player/vr_player.dart';
import '../conts/colors.dart';
import '../providers/home.dart';
part '../components/video_viewer.dart';

///Home of app
class HomeView extends StatelessWidget {
  ///Constructor
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('VR VÍDEO'), backgroundColor: ColorsApp.appBarColor),
      body: Center(child: _bodyHome(context)),
    );
  }
}

Widget _bodyHome(BuildContext context) {
  final state = Provider.of<HomeState>(context);

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      spacing: 36,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/upload.gif'),
        Column(
          spacing: 8,
          children: [
            OutlinedButton(
              onPressed: () async {
                await state.getVideo();
                Navigator.pushNamed(context, '/viewer');
              },
              child: Text('Anexar Vídeo 360°', style: TextStyle(fontSize: 18)),
            ),
            Text('Toque no botão para selecionar o vídeo'),
          ],
        ),
      ],
    ),
  );
}
