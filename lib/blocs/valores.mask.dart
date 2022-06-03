import 'package:flutter/services.dart';

class ValoresMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (!RegExp(r'^([\d.]+)?$').hasMatch(newValue.text)) {
      return oldValue;
    }

    return newValue;
  }
}
