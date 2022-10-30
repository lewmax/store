import 'package:flutter/material.dart';

class WelcomeRow extends StatelessWidget {
  final bool isLeft;
  final List<Widget> children;

  const WelcomeRow({
    super.key,
    required this.isLeft,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(isLeft ? 0 : 30),
              topLeft: Radius.circular(isLeft ? 0 : 30),
              bottomRight: Radius.circular(isLeft ? 30 : 0),
              topRight: Radius.circular(isLeft ? 30 : 0),
            ),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          ),
        ),
      ],
    );
  }
}
