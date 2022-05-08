import 'dart:io';
import 'package:contact_app/android/android.app.dart';
import 'package:contact_app/ios/ios.app.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isIOS) {
    runApp(const IOSApp());
  } else {
    runApp(const AndroidApp());
  }
}
