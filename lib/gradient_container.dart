import 'package:first_app/centered.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
   GradientContainer(this.startAlignment,this.endAlignment,{super.key});
   Alignment startAlignment;
   Alignment endAlignment;

@override
Widget build(BuildContext context) {
  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice(){
    activeDiceImage = 'assets/images/dice-4.png';
    print("Rolling the dice!")
  }
  return Container (
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: startAlignment,
        end : endAlignment,
        colors : [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 9, 1, 24)
        ],

      ),
    ),
    child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text("Roll the Die"),
            ),
          ],
        ),
    )

}
}
    
  
