import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row6_Tablet extends StatefulWidget {
  @override
  _Row6_TabletState createState() => _Row6_TabletState();
}

class _Row6_TabletState extends State<Row6_Tablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.only(left:80, right: 80),
        child: Row(
          children: [
            Expanded(
              child: Container(
                //color: Colors.amber,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelectableText(
                      'ABOUT US.',
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
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 800
                      ),
                      child: SelectableText.rich(

                        TextSpan(
                            text:
                                'Wir sind zwei Wirtschaftsinformatikstudenten der Universität Paderborn. '
                                'Wir wollen mit diesem Projekt den Freiraum, den uns die der Lehrstuhl für Digitale Märkte '
                                'anbietet, nutzen, und unserer Kreativität freien Lauf lassen.\n'
                                'Deshalb danken wir insbesondere Frau Seutter und Herrn Kundisch, die uns tatkräfitg zur Seite stehen '
                                'und bei der Umsetzung dieses Projekt unterstützen.\n'
                                'Für Kontaktanfragen sendet uns bitte eine Mail an ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                decoration: TextDecoration.none,
                                fontFamily: 'Segoe'),
                        children: [
                          TextSpan(
                            text: 'ceenes.app@gmail.com',
                            style: TextStyle(
                                color: my_pink,
                                fontSize: 20,
                                decoration: TextDecoration.none,
                                fontFamily: 'Segoe'),
                          )
                        ]),
                      ),
                    ),

                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //profil Loro
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(profil_loro),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Lorenz P.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          //Profil benji
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(profil_benji),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Benjamin K.',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}