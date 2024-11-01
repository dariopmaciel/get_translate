import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//!abrir a aba de translations_kes ao lado para entender melhor
        title: Text('title_app'.tr),
      ),
      body: Container(),
    );
  }
}
