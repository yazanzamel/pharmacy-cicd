import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _ : means the class will be private
class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      activeImage = 'assets/images/dice-4.png';
    });
  }

  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
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
    ]);
  }
}
