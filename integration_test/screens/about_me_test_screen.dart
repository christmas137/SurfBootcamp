import 'package:flutter_test/flutter_test.dart';

import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';




import '../test_screen_library.dart';

class AboutMeTestScreen {
  /// Экран.
  final Finder trait = find.byType(AboutMeScreen);
  /// Поле для заполнения описания информации о себе.
  final Finder wordsAboutYourselfField = find.byKey(TestKeys.wordsAboutYourself);
  /// Кнопка сохранить.
  final Finder saveBtn = find.byKey(TestKeys.saveBtn);
}