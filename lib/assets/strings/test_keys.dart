import 'package:flutter/widgets.dart';

abstract class TestKeys {
  /// Поле выбора даты рождения.
  static const dateOfBirthField = ValueKey('dateOfBirthField');
  /// Поле ввода места нахождения.
  static const placeResidenceField = ValueKey('placeResidenceField');
  /// Поле ввода доп информации о себе.
  static const wordsAboutYourself = ValueKey('wordsAboutYourself');
  /// Кнопка сохранить на последенем скрине.
  static const saveBtn = ValueKey('saveBtn');
}