import 'package:contact_app/android/styles.dart';
import 'package:contact_app/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  const EditorContactView({Key? key, this.model}) : super(key: key);

  final ContactModel? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null
            ? const Text(
                "Novo Contato",
                style: TextStyle(
                  color: Colors.black87,
                ),
              )
            : const Text(
                "Editar Contato",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                initialValue: model?.name,
                onSaved: (val) {
                  model?.name = val;
                },
              ),
              TextFormField(
                initialValue: model?.phone,
                onSaved: (val) {
                  model?.phone = val;
                },
              ),
              TextFormField(
                initialValue: model?.email,
                onSaved: (val) {
                  model?.email = val;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.save,
                    color: accentColor,
                  ),
                  label: const Text(
                    "Salvar",
                    style: TextStyle(
                      color: accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
