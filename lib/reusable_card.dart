import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          border: Border.all(color: Colors.black54, width: 3.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              offset: Offset(0.5, 0.5),
              blurRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
