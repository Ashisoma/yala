import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yala/auth/login_screen.dart';
import 'package:yala/auth/otp_screen.dart';
import 'package:yala/widgets/color.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isHidden = false;
  TextEditingController passwordEditCtler = TextEditingController();
  TextEditingController emailCtrler = TextEditingController();

  TextEditingController confPasswordEditCtler = TextEditingController();

  bool confHidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Register to Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                const Text(
                  "Email Address",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  controller: emailCtrler,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 12),

                    hintText: "johndoe@mail.com",
                    suffix: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  obscureText: _isHidden,
                  controller: passwordEditCtler,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 12),

                    hintText: "Enter your password",
                    suffix: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                        _isHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  obscureText: confHidden,
                  controller: confPasswordEditCtler,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 12),

                    hintText: "Confirm your password",
                    suffix: GestureDetector(
                      onTap: toggle2PasswordView,
                      child: Icon(
                        confHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const OtpScreen());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.058,
                      decoration: BoxDecoration(
                        color: MyColors.logoClr,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 16,
                          color: MyColors.logoClr,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void toggle2PasswordView() {
    setState(() {
      confHidden = !confHidden;
    });
  }
}
