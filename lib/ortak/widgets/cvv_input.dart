import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CVVInput extends StatelessWidget {
  final TextEditingController controller;

  const CVVInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "CVV",
        hintText: "123",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      keyboardType: TextInputType.number,
      obscureText: true,
      inputFormatters: [
        LengthLimitingTextInputFormatter(3),
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
