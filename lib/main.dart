import 'dart:io';
import 'package:contact_app/android/android.app.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isIOS) {
    runApp(const AndroidApp());
  } else {
    // runApp(const AndroidApp());
  }
}
