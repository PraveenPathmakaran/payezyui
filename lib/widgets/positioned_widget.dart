import 'package:flutter/material.dart';

import '../color/colors.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({
    Key? key,
    required this.leftPosition,
    required this.topPosition,
    required this.title,
    this.fontWeight = FontWeight.normal,
    required this.fontSize,
  }) : super(key: key);

  final double topPosition;
  final double leftPosition;
  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      left: leftPosition,
      child: Text(
        title,
        style: TextStyle(
          color: whiteColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
