part of '../pages/home.dart';


///Vídeo viewer widget
Widget videoViewer(BuildContext context) {
  final state = Provider.of<HomeState>(context);

  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsApp.borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return VrPlayer(
            onCreated: state.setVrController,
            x: 0,
            y: 0,
            width: constraints.maxWidth,
            height: constraints.maxHeight,
          );
        },
      ),
    ),
  );
}
