import 'package:flutter/material.dart';
import 'package:homecraft/app/screens/professsionals_description_screen.dart';

void main(){
  runApp(const HomeCraft());
}
class HomeCraft extends StatelessWidget {
  const HomeCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeCraft',
      home: ProfessionalsDescriptionScreen(),
    );
  }
}