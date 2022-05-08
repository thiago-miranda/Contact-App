import 'package:contact_app/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class EditorContactView extends StatelessWidget {
  const EditorContactView({Key? key, this.model}) : super(key: key);

  final ContactModel? model;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: model == null
                ? const Text("Novo Contato")
                : const Text("Editar Contato"),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  children: [
                    CupertinoTextField(
                      placeholder: model?.name ?? "Nome",
                    ),
                    const SizedBox(height: 20),
                    CupertinoTextField(
                      placeholder: model?.phone ?? "Telefone",
                    ),
                    const SizedBox(height: 20),
                    CupertinoTextField(
                      placeholder: model?.email ?? "Email",
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: CupertinoButton.filled(
                        child: const Text("Salvar"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
