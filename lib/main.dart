import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/core/translation/translation_keys.dart';
import 'package:get_translate/pages/home_page.dart';

//!carregamento
late TranslationKeys translationKeys;

Future<void> main() async {
  //!carregamento
  WidgetsFlutterBinding.ensureInitialized();
  translationKeys = TranslationKeys();
  await translationKeys.load();
  //até aqui em cima
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: const Locale('pt', 'BR'),
      //!teste
      // locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('pt', 'BR'),
      //! >>>>>>>>>>>>>>>CHAVES DE TRADUÇÂO
      // translations: TranslationKeys(),
      //!agora somente a variavel
      translations: translationKeys,
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
