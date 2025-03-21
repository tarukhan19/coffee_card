import 'package:coffee_card/button_widget.dart';
import 'package:coffee_card/text_widget.dart';
import 'package:flutter/material.dart';

/*
-- The CoffeePref widget is a stateful widget in Flutter, meaning it can hold mutable
state that changes over time.

-- CoffeePref Class (StatefulWidget)
This defines the widget but does not store state.
Instead, it creates an instance of _CoffeePrefState, where the state is stored.

-- _CoffeePrefState Class (State)
This class manages the state of CoffeePref.
It extends State<CoffeePref>, meaning it is tied to the CoffeePref widget.
Any changes in this state trigger a rebuild of the widget.

-- How Stateful Widgets Work
Widget Created → createState() is called, creating _CoffeePrefState.
Widget Built → The build() method inside _CoffeePrefState runs.
State Updated → Calling setState() updates the

 */
class CoffeePref extends StatefulWidget {
  const CoffeePref({super.key});

  @override
  State<CoffeePref> createState() => _CoffeePrefState();
}

class _CoffeePrefState extends State<CoffeePref> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledTextWidget('Strength: '),

            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox(width: 50)),
            StyleButtonWidget(
              onPressed: increaseStrength,
              child: Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            StyledTextWidget('Sugars: '),

            if(sugar == 0)
              const StyledTextWidget('No sugar....'),

            for (int i = 0; i < sugar; i++)
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),

            Expanded(child: SizedBox(width: 50)),
            StyleButtonWidget(
              onPressed: increaseSugar,
              child: Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
