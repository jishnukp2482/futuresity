import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:futuresity/screens/coursepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "futuresity",
      debugShowCheckedModeBanner: false,
      home: course(),
    );
  }
}
