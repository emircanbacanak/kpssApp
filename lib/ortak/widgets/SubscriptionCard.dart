import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final Color backgroundColor;
  final bool isSelected;
  final bool isRecommended;

  const SubscriptionCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    required this.backgroundColor,
    this.isSelected = false,
    this.isRecommended = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
            border: isSelected
                ? Border.all(color: Colors.orange, width: 2)
                : Border.all(color: Colors.transparent),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.orange : Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  for (var feature in features)
                    Text(
                      feature,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (isRecommended)
          Positioned(
            top: 15,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Önerilen",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
