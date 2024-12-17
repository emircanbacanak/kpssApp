import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/widgets/payment_form.dart';

class CheckoutScreen extends StatelessWidget {
  final String planName;
  final String planPrice;

  const CheckoutScreen({
    super.key,
    required this.planName,
    required this.planPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ödeme Ekranı"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ödeme Yapılacak Tutar: $planPrice",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Seçilen Plan: $planName",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              const PaymentForm(),
            ],
          ),
        ),
      ),
    );
  }
}
