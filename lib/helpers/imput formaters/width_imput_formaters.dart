import 'package:flutter/services.dart';

class WidthImputFormaters extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String textajust = newValue.text;
    final TextSelection selection = newValue.selection;

    if (newValue.text.contains(',')) {
      textajust = newValue.text.replaceFirst(',', '.');
    }else if (newValue.text.length == 5 && !newValue.text.contains('.')) {
      List<String> chars = newValue.text.split('');
      textajust = "${chars[0]}${chars[1]}${chars[2]}.${chars[3]}";
    }

    return TextEditingValue(text: textajust, selection: selection);
  }
}
