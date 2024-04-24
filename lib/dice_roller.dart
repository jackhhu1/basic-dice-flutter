import 'package:flutter/material.dart';
import 'dart:math';


class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1; // Final randomizer = Random() could be better, decrease memory used
    });
    //Insert what you want to happen when rollDice is called here
  }

  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            // const SizedBox(height:20), also works
            // Child is normally what you want to display in the button, onPressed is a function
            // () {} Anonymous function then you can define any code inside, otherwise you can
            // define a method. IE rollDice.
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 28
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}