import 'package:flutter/material.dart';

import '../styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(width: double.infinity),
          Icon(
            Icons.fingerprint,
            size: 72,
            color: accentColor,
          ),
          SizedBox(height: 20),
          Text(
            "Meus Contatos",
            style: TextStyle(
              fontSize: 24,
              color: accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
