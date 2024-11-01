import 'package:get/get.dart';

class TranslationKeys extends Translations {
  @override
  // Map<String, Map<String, String>> get keys => throw UnimplementedError();
  //criação de chave de tradução
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title_app': 'GetX Tranlate',
        },
        'pt_BR': {
          'title_app': 'GetX Trandução',
        }
      };
}
