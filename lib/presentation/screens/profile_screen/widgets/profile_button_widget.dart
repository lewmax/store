import 'package:flutter/material.dart';

class ProfileButtonWidget extends StatelessWidget {
  final Color bgColor;
  final Color color;
  final String label;
  final bool radiusLeft;
  final bool radiusRight;
  final VoidCallback onTap;

  const ProfileButtonWidget({
    super.key,
    this.bgColor = Colors.black54,
    this.color = Colors.yellow,
    required this.label,
    this.radiusLeft = false,
    this.radiusRight = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radiusLeft ? 30 : 0),
          bottomLeft: Radius.circular(radiusLeft ? 30 : 0),
          topRight: Radius.circular(radiusRight ? 30 : 0),
          bottomRight: Radius.circular(radiusRight ? 30 : 0),
        ),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
