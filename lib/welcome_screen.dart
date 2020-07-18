import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text(
            'Corona Care',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22.0,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              child: Center(
                child: Text(
                  '"The future is for those who have the soul of a hero" - The Mother',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              padding: EdgeInsets.all(20.0),
            ),
            Expanded(
              child: ReusableCard(
                onPress: null,
                colour: Colors.lightBlueAccent,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Image.asset(
                        'images/statistics.png',
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Statistics',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: null,
                      colour: Colors.redAccent,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Image.asset(
                              'images/hospital.png',
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Hospital Data',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: null,
                      colour: Colors.lightGreen,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Image.asset('images/blood.png'),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Donor Data',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: null,
                      colour: Colors.orange,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Image.asset(
                              'images/online.png',
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Online Platforms',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: null,
                      colour: Colors.yellow,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Image.asset('images/chat.png'),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Chat',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
