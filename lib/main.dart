// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movieapp/screens/home.dart';
import 'package:movieapp/bindings/bindings.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding:  MyBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      home: HomeScreens(),
    );
  }
}
