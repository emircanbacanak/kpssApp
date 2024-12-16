import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kpssapp/ortak/widgets/input_formatters.dart';

class ExpiryDateInput extends StatelessWidget {
  final TextEditingController controller;

  const ExpiryDateInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "Son Kullanma Tarihi",
        hintText: "AA/YY",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(5),
        ExpiryDateInputFormatter(),
      ],
    );
  }
}
