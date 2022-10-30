import 'package:flutter/material.dart';

import 'widgets/profile_appbar.dart';
import 'widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 210,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.brown],
              ),
            ),
          ),
          const CustomScrollView(
            slivers: [
              ProfileAppBar(),
              ProfileBody(),
            ],
          ),
        ],
      ),
    );
  }
}
