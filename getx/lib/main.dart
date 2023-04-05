import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/get_hom2_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetHomePage2(),
    );
  }
}
