import 'package:flutter/material.dart';

class StyledTextWidget  extends StatelessWidget {
  const StyledTextWidget(this.text , {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(
        color: Colors.brown[900],
        fontWeight: FontWeight.bold,
        fontSize: 18
    ));
  }
}
