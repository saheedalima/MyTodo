import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_todo/Screens/Splash.dart';


void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: Splash(),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

