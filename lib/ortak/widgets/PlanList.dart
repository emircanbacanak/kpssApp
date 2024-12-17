import 'package:flutter/material.dart';
import 'package:kpssapp/ortak/widgets/SubscriptionCard.dart';

class PlanList extends StatelessWidget {
  final String selectedPlan;
  final ValueChanged<String> onPlanSelected;

  const PlanList({
    super.key,
    required this.selectedPlan,
    required this.onPlanSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Planlar",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () => onPlanSelected("AYLIK"),
          child: SubscriptionCard(
            title: "AYLIK",
            price: "20 TL",
            features: const [
              "• Daha fazla içerik",
              "• Eksik Konu Analizi",
            ],
            backgroundColor:
                selectedPlan == "AYLIK" ? Colors.orange.shade100 : Colors.white,
            isSelected: selectedPlan == "AYLIK",
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () => onPlanSelected("YILLIK"),
          child: SubscriptionCard(
            title: "YILLIK",
            price: "200 TL",
            features: const [
              "• Daha fazla içerik",
              "• Yıllık al, 2 ay bedava gelsin",
            ],
            backgroundColor:
                selectedPlan == "YILLIK" ? Colors.blue.shade100 : Colors.white,
            isSelected: selectedPlan == "YILLIK",
            isRecommended: true,
          ),
        ),
      ],
    );
  }
}
