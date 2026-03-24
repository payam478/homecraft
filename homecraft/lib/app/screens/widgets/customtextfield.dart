import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget{

  final String lable;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardtype;
  const Customtextfield({
    super.key,
    required this.lable,
    required this.hintText,
    required this.icon,
     required this.obscureText,
    this.suffixIcon,
    this.keyboardtype=TextInputType.text,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
  
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 6,),
        TextField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardtype,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon:Icon(icon),
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: EdgeInsets.symmetric(vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 1.5,
              )
            )
          
          ),
        )
      ],

    );
  }

}