import 'package:coffee_card/coffee_pref.dart';
import 'package:coffee_card/text_widget.dart';
import 'package:flutter/material.dart';
/*
-- StatelessWidget: Immutable- The widget’s state does not change after being created.
Efficient: Since it doesn't change, Flutter does not need to rebuild it frequently.
Used for Static UI: Ideal for UI elements that remain the same, like text labels,
buttons, icons, or static layouts.

-- every widget has a build method that defines its UI. The build method is called when Flutter
needs to render the widget on the screen. If the widget is StatelessWidget, build() is called once.
If the widget is StatefulWidget, build() is called when the state changes.

-- Scaffold is the basic layout structure in Flutter.
It provides a screen with an AppBar, Body, FloatingActionButton, Drawer, etc.
In this case, it contains an AppBar at the top and a Column as the body.

-- AppBar is the top bar of the app.

-- Column - The Column widget in Flutter is a layout widget that arranges its children
vertically (from top to bottom).
children → A list of widgets arranged in a vertical direction.
mainAxisAlignment → Controls spacing along the vertical axis.
crossAxisAlignment → Controls alignment along the horizontal axis.
Use Expanded or SingleChildScrollView to handle overflow.

-- Container - The Container widget in Flutter is a box-like UI element that can hold, style, position,
and size child widgets. It is one of the most commonly used widgets for layout and styling.

 */
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Coffee Id',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: EdgeInsets.all(20),
            child: const StyledTextWidget('How I like my coffee')
          ),
          Container(
            color: Colors.brown[100],
            padding: EdgeInsets.all(20),
            child: CoffeePref(),
          ),
          Expanded(
              child: Image.asset('assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter)
          ),
        ],
      ),
    );
  }
}
