import 'package:contact_app/android/styles.dart';
import 'package:contact_app/android/views/editor-contact.view.dart';
import 'package:contact_app/models/contact.model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contato",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: NetworkImage(
                    "http://images6.fanpop.com/image/photos/39900000/IMG-6250-PNG-kion-39961687-1024-577.png",
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Simon",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "27 9 9999-9999",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            "email@mail.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor, // background
                  shape: const CircleBorder(side: BorderSide.none),
                ),
                child: const Icon(
                  Icons.phone,
                  color: accentColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor, // background
                  shape: const CircleBorder(side: BorderSide.none),
                ),
                child: const Icon(
                  Icons.email,
                  color: accentColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor, // background
                  shape: const CircleBorder(side: BorderSide.none),
                ),
                child: const Icon(
                  Icons.camera_enhance,
                  color: accentColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            title: const Text(
              "Endereco",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Rua do Desenvolvedor, 245",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Piracida - sp",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            isThreeLine: true,
            trailing: TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.pin_drop,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: ContactModel(
                  id: "1",
                  name: "Sinon",
                  email: "email@mail.com",
                  phone: "11 9999-8888",
                ),
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.edit,
          color: accentColor,
        ),
      ),
    );
  }
}
