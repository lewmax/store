import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const WelcomeButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Colors.yellow,
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
