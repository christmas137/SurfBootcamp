import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/main_strings.dart';
import 'package:profile/features/profile/screens/init_screen/init_screen.dart';

class MainTestScreen {
  /// Экран.
   final Finder trait = find.byType(InitScreen);

  /// Кнопка редактирования профиля.
  Finder get editProfileBtn =>
   find.descendant(of: trait, matching: find.byType(ElevatedButton));

   final Finder editProfileButton = find.widgetWithText(ElevatedButton, 'Edit profile');

}