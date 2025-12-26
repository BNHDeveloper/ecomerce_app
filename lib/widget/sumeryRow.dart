import 'package:flutter/material.dart';

class SummaryRow extends StatelessWidget {
  final String title;
  final String value;
  Color? valueColor;
  TextStyle? titleStyle;
  TextStyle? valueStyle;
  SummaryRow({
    super.key,
    required this.value,
    required this.title,
    valueColor,
    titleStyle,
    valueStyle,
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
