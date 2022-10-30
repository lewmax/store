import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  static const routeName = '/statistic';

  const StatisticScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistic'),
      ),
    );
  }
}
