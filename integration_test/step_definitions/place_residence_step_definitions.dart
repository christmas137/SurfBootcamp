import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/place_residence/place_residence_screen.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';


final placeResidenceStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я выбираю город$'),
        (context, tester) async {
      await tester.implicitEnterText(placeResidenceTestScreen.placeResidenceField, 'Voronezh');
      await tester.pumpAndSettle();
      await tester.tap(placeResidenceTestScreen.suggestionItem);
      await tester.pumpAndSettle();
    },
  ),

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее на экран интересов$'),
        (context, tester) async {
      await tester.pumpUntilVisible(placeResidenceTestScreen.trait);
      await tester.implicitTap(placeResidenceTestScreen.nextBtn);
      await tester.pumpAndSettle();
    },
  ),

  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанный город$'),
        (context, tester) async {
      final place = tester.widget<TextFormField>(placeResidenceTestScreen.placeResidenceField).controller?.text;
      expect(place, 'Voronezh');
    },
  ),
  testerThen<FlutterWidgetTesterWorld> (
    RegExp(r'Я попадаю на экран места жительства$'),
        (context, tester) async {
      expect(find.byType(PlaceResidenceScreen), findsOneWidget);
    },
  ),

];


