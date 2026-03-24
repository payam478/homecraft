import 'package:flutter/material.dart';

class Customdivider extends StatelessWidget {
  const Customdivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
                  Expanded(child: Divider(thickness: 1.5,)),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text('OR',style: TextStyle(
                    color: Colors.grey,
                  ),),
                   
                  ),
                   Expanded(child: Divider(thickness: 1.5)),
                 ],);
    
  }
}