import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/personal_data_screen/widgets/text_form_field_widget.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final personalDataStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю фамилию$'),
    (context, tester) async {
      await tester.implicitEnterText(
          personalDataTestScreen.surnameField, 'Snow');
    },
  ),

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю дату рождения$'),
    (context, tester) async {
      final calendar =
          tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField);
      calendar.controller?.text = '1962-06-21';
    },
  ),

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю имя$'),
        (context, tester) async {
      await tester.implicitEnterText(
          personalDataTestScreen.nameField, 'John');
    },
  ),

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю отчество$'),
        (context, tester) async {
      await tester.implicitEnterText(
          personalDataTestScreen.secondNameField, 'Reygarovich');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее на экран места жительства$'),
        (context, tester) async {
      await tester.pumpUntilVisible(personalDataTestScreen.trait);
      await tester.implicitTap(personalDataTestScreen.nextBtn);
      await tester.pumpAndSettle();
    },
  ),

  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные ФИО$'),
        (context, tester) async {
          final surname = tester.widget<TextFormFieldWidget>(personalDataTestScreen.surnameField).controller?.text;
          final name = tester.widget<TextFormFieldWidget>(personalDataTestScreen.nameField).controller?.text;
          final secondeName = tester.widget<TextFormFieldWidget>(personalDataTestScreen.secondNameField).controller?.text;
          expect(surname, 'Snow');
          expect(name, 'John');
          expect(secondeName,'Reygarovich');


    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную дату рождения$'),
        (context, tester) async {
      final date = tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField).controller?.text;
      expect(date,'1962-06-21');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я оставляю поля пустыми$'),
        (context, tester) async {
        await tester.pumpUntilVisible(personalDataTestScreen.trait);
        await tester.enterText(personalDataTestScreen.surnameField, '');
        await tester.enterText(personalDataTestScreen.nameField, '');
        await tester.pumpUntilVisible(personalDataTestScreen.trait);
    },
  ),

  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу предупреждение, что поля пустые$'),
        (context, tester) async {
      final errorTextFinder = find.byWidgetPredicate(
        (widget) => widget is Text && widget.data == 'This field must be filled');

    expect(errorTextFinder, findsNWidgets(3), reason: 'Должно быть три сообщения об ошибке для обязательных полей.');
    },
  ),
];
