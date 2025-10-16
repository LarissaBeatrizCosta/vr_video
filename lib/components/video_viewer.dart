part of '../pages/home.dart';

///Vídeo viewer widget
Widget videoViewer({String? videoUrl}) {
  return Container(
    height: double.minPositive,
    decoration: BoxDecoration(
      border: Border.all(color: ColorsApp.borderColor),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
