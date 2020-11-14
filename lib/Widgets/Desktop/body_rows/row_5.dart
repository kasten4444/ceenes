import 'package:flutter/material.dart';
import 'package:ceenes/Styles/Icons/my_icons.dart';
import 'package:ceenes/Styles/Colors/colors.dart';

class Row5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Container(
                //alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'STAY IN TOUCH',
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: my_pink,
                            ),
                          ],
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          color: my_pink,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15,),
                    SelectableText(
                      'Teste unsere neuen Features als erster aus und werden informiert, wenn'
                          'es was neues gibt.',
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.none,
                        color: my_blue,
                        fontFamily: 'Segoe',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Material(
                  child: Column(
                    children: [
                      TextField(
                        cursorColor: my_pink,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'YOUR MESSAGE...'
                        ),
                      ),
                      TextField(
                        //autofocus: true,
                        cursorColor: my_pink,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'YOUR E-MAIL...'
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ),

          ),
        ],
      ),
    );
  }
}
