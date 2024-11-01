import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
      ],
    );
  }
}
