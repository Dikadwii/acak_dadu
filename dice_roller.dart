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

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      
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