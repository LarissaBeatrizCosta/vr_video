import 'package:flutter/material.dart';
import '../conts/colors.dart';
import 'home.dart';

/// Viewer video vr page
class ViewerView extends StatelessWidget {
  ///Constructor
  const ViewerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: videoViewer(context),
        ),

        Positioned(
          top: 36,
          left: 16,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsApp.backgroundColor,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ColorsApp.appBarColor,
                size: 32,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
