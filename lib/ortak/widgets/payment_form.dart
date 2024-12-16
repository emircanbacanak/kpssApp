import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/widgets/card_holder_name_input.dart';
import 'package:kpssapp/ortak/widgets/card_number_input.dart';
import 'package:kpssapp/ortak/widgets/cvv_input.dart';
import 'package:kpssapp/ortak/widgets/expiry_date_input.dart';
import 'package:kpssapp/ortak/widgets/validators.dart';

class PaymentForm extends StatefulWidget {
  const PaymentForm({super.key});

  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController cardHolderNameController =
      TextEditingController();

  void validateAndSubmit() {
    final cardNumber = cardNumberController.text.replaceAll(' ', '');
    final expiryDate = expiryDateController.text;
    final cvv = cvvController.text;
    final cardHolderName = cardHolderNameController.text;

    if (cardNumber.isEmpty ||
        expiryDate.isEmpty ||
        cvv.isEmpty ||
        cardHolderName.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Hata"),
            content: const Text("Lütfen tüm alanları doldurun."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Tamam"),
              ),
            ],
          );
        },
      );
      return;
    }

    if (cardNumber.length != 16 || !isValidCardNumber(cardNumber)) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Geçersiz Kart Numarası"),
            content: const Text("Lütfen geçerli bir kart numarası girin."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Tamam"),
              ),
            ],
          );
        },
      );
      return;
    }

    if (!isValidExpiryDate(expiryDate)) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Geçersiz Son Kullanma Tarihi"),
            content:
                const Text("Lütfen geçerli bir son kullanma tarihi girin."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Tamam"),
              ),
            ],
          );
        },
      );
      return;
    }

    if (cvv.length != 3 || !RegExp(r'^\d{3}$').hasMatch(cvv)) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Geçersiz CVV"),
            content: const Text(
                "CVV, kartın arkasındaki 3 haneli güvenlik kodudur."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Tamam"),
              ),
            ],
          );
        },
      );
      return;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Ödeme İşlemi"),
          content:
              const Text("Ödemeniz başarıyla alınmıştır. Teşekkür ederiz!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text("Tamam"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Kart Bilgilerinizi Giriniz",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        CardNumberInput(controller: cardNumberController),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(child: ExpiryDateInput(controller: expiryDateController)),
            const SizedBox(width: 16),
            Expanded(child: CVVInput(controller: cvvController)),
          ],
        ),
        const SizedBox(height: 20),
        CardHolderNameInput(controller: cardHolderNameController),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: validateAndSubmit,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Center(
            child: Text(
              "Ödemeyi Onayla",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
