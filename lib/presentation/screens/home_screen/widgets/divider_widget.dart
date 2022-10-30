import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  final String label;
  final Color color;

  const DividerWidget(
      {super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
          width: 50,
          child: Divider(
            color: color,
            thickness: 1,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 40,
          width: 50,
          child: Divider(
            color: color,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
