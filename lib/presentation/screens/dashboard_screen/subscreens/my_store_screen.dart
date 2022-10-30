import 'package:flutter/material.dart';

class MyStoreScreen extends StatelessWidget {
  static const routeName = '/my-store';

  const MyStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Store'),
      ),
    );
  }
}
