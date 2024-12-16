import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/widgets/payment_form.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ödeme Ekranı"),
        backgroundColor: Colors.deepPurple,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PaymentForm(),
        ),
      ),
    );
  }
}
