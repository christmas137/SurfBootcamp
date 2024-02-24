import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final aboutMeStepsDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю информацию о себе и сохраняю данные$'),
        (context, tester) async {
          await tester.implicitEnterText(aboutMeTestScreen.wordsAboutYourselfField, 'Ночь наступает, и начинается мой дозор. Он не окончится до моей смерти. Я не возьму себе жену, не буду держать земли, не буду отцом детям. Я не буду носить короны и не буду добиваться славы. Я буду жить и умру на своем посту. Я — меч во тьме. Я — страж на стенах. Я — щит, который охраняет царства людей. Я посвящаю свою жизнь и честь Ночному Дозору в эту ночь и все ночи, которые будут после нее');
          await tester.pumpUntilVisible(aboutMeTestScreen.trait);
          await tester.implicitTap(aboutMeTestScreen.saveBtn);
          await tester.pumpUntilVisible(mainTestScreen.trait);
          },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную информацию о себе$'),
        (context, tester) async {
      await tester.pumpUntilVisible(aboutMeTestScreen.trait);
      final wordAboutMe = tester.widget<TextFormField>(aboutMeTestScreen.wordsAboutYourselfField).controller?.text;
      expect(wordAboutMe, 'Ночь наступает, и начинается мой дозор. Он не окончится до моей смерти. Я не возьму себе жену, не буду держать земли, не буду отцом детям. Я не буду носить короны и не буду добиваться славы. Я буду жить и умру на своем посту. Я — меч во тьме. Я — страж на стенах. Я — щит, который охраняет царства людей. Я посвящаю свою жизнь и честь Ночному Дозору в эту ночь и все ночи, которые будут после нее');
    },
  ),

];