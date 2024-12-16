import 'package:flutter/material.dart';

class CardHolderNameInput extends StatelessWidget {
  final TextEditingController controller;

  const CardHolderNameInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "Kart Sahibinin Adı",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
