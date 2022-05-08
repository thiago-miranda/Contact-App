import 'package:contact_app/ios/views/home.view.dart';
import 'package:contact_app/ios/styles.dart';
import 'package:flutter/cupertino.dart';

class IOSApp extends StatelessWidget {
  const IOSApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: iosTheme(),
      home: const HomeView(),
    );
  }
}
