import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//accept two colors
class GradientContainer extends StatelessWidget {
  //constructor, key argument is what we expect to recieve from stateless widgets
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  //when extending statelessWidget we must implement this function
  @override
  Widget build(context) {
    //must return widget
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        )),
        child: Center(
          child: DiceRoller(),
        ));
  }
}

//accept a list of colors
/* class GradientContainer extends StatelessWidget {
  //constructor, key argument is what we expect to recieve from stateless widgets
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;
  //when extending statelessWidget we must implement this function
  @override
  Widget build(context) {
    //must return widget
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        begin: startAlignment,
        end: endAlignment,
      )),
      child: const Center(child: StyledText('hello world')),
    );
  }
} */
