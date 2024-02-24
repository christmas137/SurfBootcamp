import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';



import '../test_screen_library.dart';


final mainStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу к редактированию профиля$'),
        (context, tester) async {
      await tester.pumpUntilVisible(mainTestScreen.trait);
      await tester.implicitTap(mainTestScreen.editProfileBtn);
      await tester.pumpUntilVisible(personalDataTestScreen.trait);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я проверяю корректность текста кнопки на главном экране$'),
        (context, tester) async {
      await tester.pumpUntilVisible(mainTestScreen.trait);
    },
  ),

  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу текст на кнопке "Edit profile"$'),
        (context, tester) async {
      expect(mainTestScreen.editProfileButton, findsOneWidget);
    },
  ),
];