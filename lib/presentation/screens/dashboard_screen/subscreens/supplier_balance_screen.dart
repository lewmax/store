import 'package:flutter/material.dart';

class SupplierBalanceScreen extends StatelessWidget {
  static const routeName = '/supplier-balance';

  const SupplierBalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Supplier Balance'),
      ),
    );
  }
}
