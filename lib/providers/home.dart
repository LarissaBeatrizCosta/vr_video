import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

///Class responsable for gerent the state of home view
class HomeState extends ChangeNotifier {
  ///url of video 360°
  String? videoVr;

  /// get url video when press button to get a path
  Future<void> getVideo() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        dialogTitle: 'Selecione um arquivo de vídeo',
        type: FileType.video,
        allowMultiple: false,
      );
      if (result == null || result.files.isEmpty || result.files.first.path == null) {
        throw Exception('Nenhum vídeo selecionado.');
      }
      videoVr = result.files.first.path;
    } catch (e) {
      throw Exception('Erro ao carregar o vídeo: $e');
    }
    notifyListeners();
  }
}
