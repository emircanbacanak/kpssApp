import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/widgets/FeaturesList.dart';
import 'package:kpssapp/ortak/widgets/PlanList.dart';
import 'package:kpssapp/screens/PaymentScreen.dart';

class ProVersionPage extends StatefulWidget {
  const ProVersionPage({super.key});

  @override
  State<ProVersionPage> createState() => _ProVersionPageState();
}

class _ProVersionPageState extends State<ProVersionPage> {
  String selectedPlan = "YILLIK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FeaturesList(), // Avantajlar listesi
              const SizedBox(height: 30),
              PlanList(
                // Planlar listesi
                selectedPlan: selectedPlan,
                onPlanSelected: (plan) {
                  setState(() {
                    selectedPlan = plan;
                  });
                },
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showPaymentScreen(context, selectedPlan,
                        selectedPlan == "AYLIK" ? "20 TL" : "200 TL");
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    backgroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Pro Versiyona Geç",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
