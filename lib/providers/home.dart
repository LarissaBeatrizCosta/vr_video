import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:vr_player/vr_player.dart';

///CLass that manages the state of the app
class HomeState extends ChangeNotifier {
  ///Url of video 360°
  String? videoPath;

  ///Controller of VrPlayer
  VrPlayerController? vrController;

  /// Choose a video
  Future<void> getVideo() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.video, allowMultiple: false);

    if (result != null && result.files.isNotEmpty) {
      videoPath = result.files.single.path;

      if (vrController != null && videoPath != null) {
        await vrController?.pause();
        await vrController?.loadVideo(videoUrl: videoPath);
        await vrController?.play();
      }

      notifyListeners();
    }
  }

  /// Set  controller of VrPlayer
  void setVrController(VrPlayerController controller, VrPlayerObserver observer) {
    vrController = controller;

    observer
      ..onStateChange = (state) {
        if (state == VrState.ready && videoPath != null) {
          vrController?.play();
        }
      }
      ..onDurationChange = (duration) {}
      ..onPositionChange = (pos) {}
      ..onFinishedChange = (finished) {};

    if (videoPath != null) {
      vrController?.loadVideo(videoUrl: videoPath);
    }
  }
}
