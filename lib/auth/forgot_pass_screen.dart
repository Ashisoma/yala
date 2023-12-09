import 'package:flutter/material.dart';

class ForgotPasswScreen extends StatefulWidget {
  const ForgotPasswScreen({super.key});

  @override
  State<ForgotPasswScreen> createState() => _ForgotPasswScreenState();
}

class _ForgotPasswScreenState extends State<ForgotPasswScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.058,
                decoration: BoxDecoration(
                  // color: ThemeColours.reddishClr,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
