import 'package:flutter/material.dart';

class SignUpRowWidget extends StatelessWidget {
  const SignUpRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(6),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Column(
              children: const [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image(
                      image: AssetImage('assets/images/inapp/google.jpg')),
                ),
                Text('Google'),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: const [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image(
                      image: AssetImage('assets/images/inapp/facebook.jpg')),
                ),
                Text('Facebook'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
