import 'package:flutter/services.dart';

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(' ', '');
    final buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      if (i % 4 == 0 && i != 0) buffer.write(' ');
      buffer.write(text[i]);
    }
    return newValue.copyWith(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

class ExpiryDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text.replaceAll('/', '');

    if (text.isEmpty) {
      return newValue.copyWith(
        text: '',
        selection: const TextSelection.collapsed(offset: 0),
      );
    }

    if (text.length == 1) {
      final firstDigit = int.tryParse(text);
      if (firstDigit == null || firstDigit > 1) {
        return oldValue.copyWith(
          text: '',
          selection: const TextSelection.collapsed(offset: 0),
        );
      }
    } else if (text.length == 2) {
      final month = int.tryParse(text);
      if (month == null || month > 12) {
        text = text.substring(0, 1);
      } else {
        text = newValue.text.replaceAll('/', '');
      }
    }

    if (text.length > 2) {
      text = '${text.substring(0, 2)}/${text.substring(2)}';
    }

    if (text.length > 5) {
      text = text.substring(0, 5);
    }

    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
