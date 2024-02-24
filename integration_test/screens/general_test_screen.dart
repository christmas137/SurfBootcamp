import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/personal_data_screen/widgets/text_form_field_widget.dart';
import 'package:profile/features/profile/screens/place_residence/widgets/field_with_suggestions_widget/field_with_suggestions_widget.dart';
import 'package:profile/features/profile/widgets/next_button.dart';

class GeneralTestScreen {
  ///  Поля ввода на экране персональных данных.
   Finder textFormFieldWidget(String hint) => find.byWidgetPredicate((widget) {
         return widget is TextFormFieldWidget && widget.hintText == hint;
   });


   /// Кнопка Далее.
   final Finder nextBtn = find.descendant(of: find.byType(NextButton), matching: find.byType(ElevatedButton));
   /// Кнопка назад в AppBar.
   final Finder backButtonFinder = find.byTooltip('Back');
}
