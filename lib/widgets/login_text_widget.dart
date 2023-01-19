import 'package:flutter/material.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget(
      {Key? key, required this.text, required this.color, required this.size})
      : super(key: key);
  final String text;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
