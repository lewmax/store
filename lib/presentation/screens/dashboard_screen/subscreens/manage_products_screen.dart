import 'package:flutter/material.dart';

class ManageProductsScreen extends StatelessWidget {
  static const routeName = '/manage-products';

  const ManageProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Products'),
      ),
    );
  }
}
