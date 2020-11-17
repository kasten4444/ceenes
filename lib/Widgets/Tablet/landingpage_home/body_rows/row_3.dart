import 'package:ceenes/Widgets/Tablet/tablet_styles/styles.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Row3_Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight:380, maxWidth:380),
              child: Container(
                  child: Image.asset(
                    smartphone_2,
                  )),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    '2. START SWIPING',
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            color: my_pink,
                          ),
                        ],
                        fontSize: fontSize_title_tablet,
                        decoration: TextDecoration.none,
                        color: my_pink,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15,),
                  SelectableText(
                    'Jeder hat jeder deiner Freunde einen Link bekommen und kann anfangen zu swipen. Bewerte jeden'
                        'Film, sodass ihr am Ende ein Ranking habt, welcher Film von den meisten geschaut werden will.',
                    style: TextStyle(
                      fontSize: fontSize_text_tablet,
                      decoration: TextDecoration.none,
                      color: my_blue,
                      fontFamily: 'Segoe',
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
