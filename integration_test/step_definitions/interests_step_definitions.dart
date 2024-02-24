import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';



import '../test_screen_library.dart';




final interestsStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю интересы$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.trait);
      await tester.tap(interestsTestScreen.artCheckbox);
      await tester.pumpUntilVisible(interestsTestScreen.trait);

      await tester.tap(interestsTestScreen.designCheckbox);
      await tester.pumpAndSettle();
    },
  ),

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее на экран о себе$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.trait);
      await tester.implicitTap(interestsTestScreen.nextBtn);
    },
  ),
  testerThen<FlutterWidgetTesterWorld> (
    RegExp(r'Я вижу указанные интересы$'),
    (context, tester) async {
      await tester.pumpAndSettle();

      /// Получаем виджеты чекбоксов по Finder'ам
      final Checkbox artCheckboxWidget = tester.widget(interestsTestScreen.artCheckbox);
      final Checkbox designCheckboxWidget = tester.widget(interestsTestScreen.designCheckbox);

      /// Проверяем, что чекбоксы отмечены
      expect(artCheckboxWidget.value, true);
      expect(designCheckboxWidget.value, true);
    },
  ),
  testerThen<FlutterWidgetTesterWorld> (
    RegExp(r'Я попадаю на экран интересов$'),
    (context, tester) async {
      expect(find.byType(InterestsScreen), findsOneWidget);
  },
  ),
];