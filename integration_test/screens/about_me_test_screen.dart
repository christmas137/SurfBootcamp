import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';
import 'package:profile/features/profile/widgets/next_button.dart';



import '../test_screen_library.dart';

class AboutMeTestScreen {
  /// Экран.
  final Finder trait = find.byType(AboutMeScreen);

  final Finder wordsAboutYourselfField = find.byKey(TestKeys.wordsAboutYourself);

  final Finder saveBtn = find.byKey(TestKeys.saveBtn);
}