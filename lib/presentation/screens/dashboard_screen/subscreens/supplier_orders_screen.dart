import 'package:flutter/material.dart';

class SupplierOrdersScreen extends StatelessWidget {
  static const routeName = '/supplier-orders';

  const SupplierOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Supplier Orders'),
      ),
    );
  }
}
