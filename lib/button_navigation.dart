import 'package:flutter/material.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({super.key});

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.amber.shade900,
          side: BorderSide(color: Colors.white, width: 1),
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
        ),
        label: Text(
          "Start Quiz",
          style: TextStyle(fontSize: 20),
        ),
        iconAlignment: IconAlignment.end,
        icon: Icon(
          Icons.arrow_right_alt,
          size: 30,
          weight: 400,
          color: Colors.white,
        ));
  }
}
