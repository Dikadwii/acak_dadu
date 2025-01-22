import 'package:flutter/material.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;


  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child:Column
          (mainAxisSize: MainAxisSize.min,
          children: [Image.asset(
        'asset/images/dice-2.png',
        width: 200,
      ),
      TextButton(onPressed: AcakDadu,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(
          top: 20
        ),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 28),
      ),
      
      child:const Text("acak dadu"),
      )
      ],
      )
   ),
    );
  }

  void AcakDadu() {
  }
}
