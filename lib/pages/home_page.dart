import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/core/translation/translation_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//!abrir a aba de translations_kes ao lado para entender melhor
        // title: Text('title_app'.tr),
        // title: Text(TranslateKey.titleApp.tr()), //forma 1 para ser SEM função precisa ser GET
        title: Text(TranslateKey.titleApp.tr), //forma 2
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('Welcome'.tr),
          //! ACELERAÇÂO VIA ENUM
          //! Text('welcome'.trParams({'name': 'FULANO'})),
          Text(
              TranslateKey.titleApp.key.trParams({'name': 'FULANO'})), //forma 1
          Text(TranslateKey.titleApp.trParams({'name': 'FULANO'})), //forma 2

          // Text('user_list_title'.trPluralParams('user_list_title_plural', 1, {'total': '1'})),//forma 1
          Text(TranslateKey.userListTitleSimple.trPlural(1)), //forma2
          // Text('user_list_title'.trPluralParams('user_list_title_plural', 2, {'total': '2'})),//forma 1
          Text(TranslateKey.userListTitleSimple.trPlural(2)), //forma 2
          // Text('user_list_title_simple'.trPluralParams('user_list_title_simple_plural', 1)),//forma 1
          Text(TranslateKey.userListTitle.trPluralParams(1, {'total': '1'})), //forma 2
          // Text('user_list_title_simple'.trPluralParams('user_list_title_simple_plural', 2)),//forma 1
          Text(TranslateKey.userListTitle.trPluralParams(2, {'total': '2'})), //forma 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('Alterar US')),
              const SizedBox(width: 5),
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('pt', 'BR'));
                  },
                  child: const Text('Alterar BR')),
            ],
          ),
        ],
      )),
    );
  }
}
