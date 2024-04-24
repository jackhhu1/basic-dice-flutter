import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';


//import 'package:first_app/styled_text.dart';

//var startAlignment = Alignment.topLeft; CAN DO THIS AS WELL IF YOU WANT TO DO IT MORE THAN ONCE
//var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  // Initialisation work, you can call super class: super(key: key)
  // Const helps tell it can be optimised


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget{
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;
//   // Initialisation work, you can call super class: super(key: key)
//   // Const helps tell it can be optimised
//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: colors,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('Hello World!')
//           ),
//         );
//   }
// }
