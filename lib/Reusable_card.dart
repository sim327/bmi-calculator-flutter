import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final VoidCallback onPress;
  ReusableCard(
      {Key? key,
      required this.color,
      required this.cardChild,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
