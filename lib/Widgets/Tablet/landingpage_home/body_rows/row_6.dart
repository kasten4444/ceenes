import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Row6_Tablet extends StatefulWidget {
  @override
  _Row6_TabletState createState() => _Row6_TabletState();
}

class _Row6_TabletState extends State<Row6_Tablet> {
  _launchURL() async {
    const url =
        'https://de.linkedin.com/in/benjamin-kasten-a68466155?challengeId=AQGWWfDdKCKNjwAAAXYVZyJsoBJBTAUesYA_Y30jgQvYM8XZnLmkfnDvN58rnfxhg077ug-e2Nqb_PqTIvsQiITK9rtxoP1jFw&submissionId=ab2c09ea-1410-4c16-c6a2-30032c387a20';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://de.linkedin.com/in/lorenz-pott-156a6513b';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.only(left: 80, right: 80),
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
                      constraints: BoxConstraints(maxWidth: 800),
                      child: SelectableText(
                          'Wir sind zwei Wirtschaftsinformatikstudenten der Universität Paderborn. '
                              'Ceenes enstand im Rahmen des Innovative Ideas Seminar am Lehrstuhl für Wirtschaftsinformatik, '
                              'insb. Digitale Märkte. \nBesonders danken wir Frau Seutter und Herrn Kundisch, die '
                              'uns beratend zur Seite stehen. Mit Kreativität und unseren Skills wollen wir Ceenes weiter voran '
                              'treiben.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontFamily: 'Segoe')
                      )
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //profil Loro
                          GestureDetector(
                            onTap: _launchURL2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    profil_loro,
                                    height: 150,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Lorenz P.',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                      height: 20,
                                      child: Image.asset(
                                        linkedIn,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          //Profil benji
                          GestureDetector(
                              onTap: _launchURL,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      profil_benji,
                                      height: 150,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Benjamin K.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Container(
                                        height: 20,
                                        child: Image.asset(
                                          linkedIn,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ))
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
