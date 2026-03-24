import 'package:flutter/material.dart';


class CustomtextBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomtextBtn({super.key,
  required this.text,
  required this.onPressed,
  
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child:Text(text,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.blue
    ),
    )
    );
   
  }
}
