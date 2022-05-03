import 'package:contact_app/android/styles.dart';
import 'package:contact_app/android/views/home.view.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: const HomeView(),
    );
  }
}
