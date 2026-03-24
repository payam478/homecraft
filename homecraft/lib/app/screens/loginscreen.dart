import 'package:flutter/material.dart';
import 'package:homecraft/app/screens/widgets/custombutton.dart';
import 'package:homecraft/app/screens/widgets/customdivider.dart';
import 'package:homecraft/app/screens/widgets/customiconbtn.dart';
import 'package:homecraft/app/screens/widgets/customtextbtn.dart';
import 'package:homecraft/app/screens/widgets/customtextfield.dart';
import 'package:homecraft/app/screens/widgets/customcheckbox.dart';
import 'package:homecraft/app/screens/widgets/customheadingdescription.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionHeader(
                    title: "Welcome\nto HomeCraft✨",
                    subtitle:
                        'Book trusted plumbers, electricians, and more — all in one place.',
                  ),
                  SizedBox(height: 24),
                  Customtextfield(
                    lable: 'Email',
                    hintText: 'Email',
                    icon: Icons.email_outlined,
                    obscureText: false,
                    keyboardtype: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 12),
                  Customtextfield(
                    lable: 'Password',
                    hintText: 'abc@123',
                    icon: Icons.lock_outline,
                    obscureText: obscurePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCheckBox(
                        value: rememberMe,
                        onChanged: (val) {
                          setState(() {
                            rememberMe = val!;
                          });
                        },
                        label: 'Remember Me',
                      ),
                      CustomtextBtn(
                        text: 'Forgot Password',
                        onPressed: () {
                          // will make a functtion in future
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Custombutton(lable: 'Login'),
                  SizedBox(height: 24),
                  Customdivider(),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: CustomIconBtn(text:'Google',
                         iconpath: 'assets/svg_icons/google.svg',
                          onPressed: (){}),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: CustomIconBtn(text: 'Facebook',
                         iconpath:'assets/svg_icons/facebook.svg' ,
                          onPressed: (){})
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an acount?"),
                      CustomtextBtn(text: 'SignUp', onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


