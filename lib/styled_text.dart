import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //this.text and the variable i declared below must have the same name
  // i had to remove consts because text is a variable and the widgets can not be const
  const StyledText(this.text, {super.key});

  // i have created text variable to include it in the widget
  // as i wrote in the docs , final is determined at the runtime
  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(color: Colors.white, fontSize: 28));
  }
}
