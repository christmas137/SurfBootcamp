
import 'package:flutter_gherkin/flutter_gherkin.dart';
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