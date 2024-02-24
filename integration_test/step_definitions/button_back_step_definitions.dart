import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';
final buttonBackStepDefenitions= [

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я нажимаю на кнопку "назад"$'),
        (context, tester) async {
      await tester.pumpAndSettle();
      await tester.implicitTap(generalTestScreen.backButtonFinder);
      await tester.pumpAndSettle();
    },
  ),

];