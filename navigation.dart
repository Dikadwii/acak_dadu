import 'package:acak_dadu2/dice_roller.dart';
import 'package:acak_dadu2/dice_roller2.dart';
import 'package:acak_dadu2/dice_roller3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(text: "satu dadu"),
                  Text("dadu dua"),
                  Text("dadu tiga"),
                ],
              ),
              title: const Text("acak dadu"),
            ),
            body: const TabBarView(children: [
              DiceRoller(),
              DiceRoller2(),
              DiceRoller3(),
            ]),
          )),
    );
  }
}
