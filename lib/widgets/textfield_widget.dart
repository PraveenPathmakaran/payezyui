import 'package:flutter/material.dart';

import '../color/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key, required this.hintText, required this.labelText})
      : super(key: key);

  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: TextStyle(color: greyColor.withOpacity(0.3)),
          label: Text(
            labelText,
            style: const TextStyle(
              fontSize: 25,
              color: blackColor,
              fontWeight: FontWeight.w400,
            ),
          )),
    );
  }
}
