import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String lable;
  final VoidCallback? onPressed;

  const Custombutton({
    super.key,
    required this.lable,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: const Color(0xFF6753F7),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          elevation: 3,
        ),
        child: Text(lable),
      ),
    );
  }
}
