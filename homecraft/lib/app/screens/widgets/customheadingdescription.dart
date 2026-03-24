import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget{

  final String title;
  final String subtitle;
  const SectionHeader({
    super.key,
    required this.title,
    required this.subtitle,
    
  });
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            height: 1.2,
          ),
          
        ),
        SizedBox(height: 12,),
        Text(subtitle,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[700],
          height: 1.4,
        ),)
      
      ],

    );
  }
}