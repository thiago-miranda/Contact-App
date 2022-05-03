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
      body: ListView(
        children: [
          ListTile(
            leading: Image.network(
              "http://images6.fanpop.com/image/photos/39900000/IMG-6250-PNG-kion-39961687-1024-577.png",
            ),
            title: const Text("Thiago"),
            subtitle: const Text("27 9 9999-0000"),
            trailing: TextButton(
              onPressed: () {},
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor ,
              ),
            ),
          )
        ],
      ),
    );
  }
}
