import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller2 extends StatefulWidget {
  const DiceRoller2({super.key});

  @override
  State<DiceRoller2> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller2> {
  var currentDiceRoll = 2;
   var currentDiceRoll2 = 4;
   
  

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
       currentDiceRoll2 = randomizer.nextInt(6) + 1;
       
    });
  }
  

  @override
  build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Image.asset(
          'asset/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        Image.asset(
          'asset/images/dice-$currentDiceRoll2.png',
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
          child: const Text('acak!'),
        )
      ],
    );
    
  }
}