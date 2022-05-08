import 'package:contact_app/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class EditorContactView extends StatelessWidget {
  const EditorContactView({Key? key, this.model}) : super(key: key);

  final ContactModel? model;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Text("L"),
    );
  }
}
