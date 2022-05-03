import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Meus Contatos",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        leading: TextButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
