import "package:flutter/material.dart";
import 'package:project/Constatnt/constant.dart';

class InputFailed extends StatelessWidget {
  final TextInputType keyType;
  final String hintText;
  final bool scureText;
  final Icon prefixIcon;
  const InputFailed({
    super.key,
    required this.keyType,
    required this.hintText,
    required this.scureText,
    required this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText: scureText,
        keyboardType: keyType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: grey,
            fontWeight: FontWeight.w600,
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color.fromARGB(245, 246, 4, 4),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
