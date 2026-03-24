import 'package:flutter/material.dart';
import 'package:homecraft/app/screens/loginscreen.dart';


void main(){
  runApp(HomeCraft());
}
class HomeCraft extends StatelessWidget {
  const HomeCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeCraft',
      home: LoginScreen(),
    );
  }
}