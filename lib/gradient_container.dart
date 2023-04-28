import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//accept two colors
class GradientContainer extends StatelessWidget {
  //constructor, key argument is what we expect to recieve from stateless widgets
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  var activeImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeImage = 'assets/images/dice-5.png';
    print('Changing image...');
  }

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
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(activeImage, width: 200),
            //add text cause buttons should have sentences
            //(){} is how we create anynymous function here

            SizedBox(height: 20),

            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 28,
                    )),
                child: Text('Roll Dice'))
          ]),
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
