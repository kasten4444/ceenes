import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Row3_Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 80),

                alignment: Alignment.centerRight,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 450, maxWidth: 450),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Image.asset(
                      smartphone_2,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 80),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      '2. START SWIPING',
                      style: TextStyle(
                          fontSize: 45,
                          decoration: TextDecoration.none,
                          color: my_pink,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SelectableText(
                      'Ihr habt jetzt alle einen Link bekommen und könnt anfangen zu swipen. Bewerte jeden '
                          'Film. Gefällt er dir, dann gibt ihm einen Like und swipe nach rechts. '
                          'Ansonsten swipe nach links. Worauf wartet ihr noch?',
                      style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontFamily: 'Segoe',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
