import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeAnimatedImage extends StatefulWidget {
  const WelcomeAnimatedImage({Key? key}) : super(key: key);

  @override
  State<WelcomeAnimatedImage> createState() => _WelcomeAnimatedImageState();
}

class _WelcomeAnimatedImageState extends State<WelcomeAnimatedImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, child) =>
          Transform.rotate(angle: _controller.value * 2 * pi, child: child),
      child: const SizedBox(
        height: 70,
        width: 70,
        child: Image(
          image: AssetImage('assets/images/inapp/logo.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
