import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Part3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height ,
        //color: Colors.grey,
        child:
        Column(children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: SelectableText(
                        '2. START SWIPING',
                        style: TextStyle(
                            fontSize: 35,
                            decoration: TextDecoration.none,
                            color: my_pink,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold),),),
          
               Container(
                alignment: Alignment.center,
                //color: Colors.pinkAccent,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 300, maxWidth: 450),
                  child: Image.asset(
                    smartphone_2,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(50),
                child: SelectableText(
                  'Ihr habt jetzt alle einen Link bekommen und könnt anfangen zu swipen. Bewerte jeden '
                'Film. Gefällt er dir, dann gibt ihm einen Like und swipe nach rechts. '
                  'Ansonsten swipe nach links. Worauf wartet ihr noch?',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                          fontSize: 17,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontFamily: 'Segoe',
                        ),
                      ),)
              
           

        ],)
      ),
    );
  }
}
