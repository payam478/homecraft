import 'package:flutter/material.dart';

class ServicePackageChip extends StatelessWidget {
  final String name;
  final String price;
  final String oldPrice;
  final bool isSelected;

  const ServicePackageChip({
    super.key,
    required this.name,
    required this.price,
    required this.oldPrice,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isSelected ? Colors.black87 : Colors.grey.shade200;
    final textColor = isSelected ? Colors.white : Colors.black87;
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            oldPrice,
            style: TextStyle(
              fontSize: 12,
              color: textColor.withAlpha(191),
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}
