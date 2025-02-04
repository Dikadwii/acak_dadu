import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
   var currentDiceRoll2 = 4;
   var currentDiceRoll3 = 6;
    var currentDiceRoll4 = 3;
  

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
       currentDiceRoll2 = randomizer.nextInt(6) + 1;
        currentDiceRoll3 = randomizer.nextInt(6) + 1;
         currentDiceRoll4 = randomizer.nextInt(6) + 1;
    });
  }
  

  @override
  build(context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      
      children: [
        Image.asset(
          'asset/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        Image.asset(
          'asset/images/dice-$currentDiceRoll2.png',
          width: 200,
        ),
        Image.asset(
          'asset/images/dice-$currentDiceRoll3.png',
          width: 200,
        ),
         Image.asset(
          'asset/images/dice-$currentDiceRoll4.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            textStyle: TextStyle(fontSize: 28) ,
          ),
          child: const Text('lacak kb!'),
        )
      ],
    );
    
  }
}