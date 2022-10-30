import 'package:flutter/material.dart';

class ProfileSectionWidget extends StatelessWidget {
  final String label1;
  final String? subTitle1;
  final IconData icon1;
  final VoidCallback? function1;
  final String label2;
  final String? subTitle2;
  final IconData icon2;
  final VoidCallback? function2;
  final String label3;
  final String? subTitle3;
  final IconData icon3;
  final VoidCallback? function3;

  const ProfileSectionWidget({
    super.key,
    required this.label1,
    this.subTitle1,
    required this.icon1,
    this.function1,
    required this.label2,
    this.subTitle2,
    required this.icon2,
    this.function2,
    required this.label3,
    this.subTitle3,
    required this.icon3,
    this.function3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            onTap: function1,
            title: Text(label1),
            leading: Icon(icon1),
            subtitle: subTitle1 == null ? null : Text(subTitle1!),
          ),
          const Divider(
            color: Colors.yellow,
            thickness: 1,
            indent: 40,
            endIndent: 40,
          ),
          ListTile(
            onTap: function2,
            title: Text(label2),
            leading: Icon(icon2),
            subtitle: subTitle2 == null ? null : Text(subTitle2!),
          ),
          const Divider(
            color: Colors.yellow,
            thickness: 1,
            indent: 40,
            endIndent: 40,
          ),
          ListTile(
            onTap: function3,
            title: Text(label3),
            leading: Icon(icon3),
            subtitle: subTitle3 == null ? null : Text(subTitle3!),
          ),
        ],
      ),
    );
  }
}
