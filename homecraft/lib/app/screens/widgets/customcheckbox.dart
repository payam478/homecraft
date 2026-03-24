import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget{
  final bool value;
  final ValueChanged onChanged;
  final String label;
  const CustomCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
     required this.label,
    
  });

  @override
  Widget build(BuildContext context) {
     return Row(
      children: [
        Checkbox(value: value,
         onChanged: onChanged,
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
         ),
         ),
         Text(label,
          style: TextStyle(
            fontSize: 14,
          ),),
      ],

     );
  }
}