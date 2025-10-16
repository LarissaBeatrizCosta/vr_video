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
      body: _bodyHome(context),
    );
  }
}

Widget _bodyHome(BuildContext context) {
  final state = Provider.of<HomeState>(context);

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedButton(
          onPressed: () async {
            await state.getVideo();
          },
          child: Text('Anexar Vídeo 360°'),
        ),
        videoViewer(context),
      ], 
    ),
  );
}
