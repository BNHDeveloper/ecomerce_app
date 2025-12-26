import 'package:flutter/material.dart';

class SummaryRow extends StatelessWidget {
  final String title;
  final String value;
final Color? valueColor;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;

  const SummaryRow({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
    this.titleStyle,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              titleStyle ??
              TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        Text(
          value,
          style:
              valueStyle ??
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: valueColor ?? Colors.black,
              ),
        ),
      ],
    );
  }
}
