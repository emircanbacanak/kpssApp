import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kpssapp/ortak/widgets/input_formatters.dart';

class CardNumberInput extends StatelessWidget {
  final TextEditingController controller;

  const CardNumberInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "Kart Numarası",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        prefixIcon: const Icon(Icons.credit_card),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(16),
        CardNumberInputFormatter(),
      ],
    );
  }
}
