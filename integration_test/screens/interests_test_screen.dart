import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';
import 'package:profile/features/profile/widgets/next_button.dart';



class InterestsTestScreen{
  /// Экран.
  final Finder trait = find.byType(InterestsScreen);


  Finder findCheckboxNextToText(String interestText) {
    return find.byWidgetPredicate(
          (widget) => widget is Checkbox && find.ancestor(
        of: find.byWidget(widget),
        matching: find.byType(Row),
        matchRoot: true,
      ).evaluate().any((element) =>
      element.widget is Row &&
          (element.widget as Row).children.any((childWidget) =>
          childWidget is Text && childWidget.data == interestText)),
    );
  }
  /// Чек-бокс номер 1(Арт).
  Finder get artCheckbox => findCheckboxNextToText('Art');
  /// Чекс-бокс номер 2(Дизайн).
  Finder get designCheckbox => findCheckboxNextToText('Design');

  ///Кнопка далее.
  final Finder nextBtn = find.descendant(
      of: find.byType(NextButton),
      matching: find.byType(ElevatedButton));

}




