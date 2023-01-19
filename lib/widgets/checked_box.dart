import 'package:flutter/material.dart';

import '../color/colors.dart';

class CheckedBoxWidget extends StatelessWidget {
  const CheckedBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      child: Checkbox(
        value: true,
        onChanged: (value) => true,
        activeColor: redColor,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
