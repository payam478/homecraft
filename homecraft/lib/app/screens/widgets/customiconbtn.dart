
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconBtn extends StatelessWidget {
   final String text;
   final String iconpath;
   final VoidCallback onPressed;
   
  const CustomIconBtn({
    super.key,
    required this.text,
     required this.iconpath,
      required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconpath,
        height: 24,
        width: 24,
      ),
      label: Text(text,
      style: TextStyle(
        color: Colors.blue,
      ),
      ),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}