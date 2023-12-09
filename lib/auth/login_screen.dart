import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 15.0,),
        child: Column(
          children: [
            Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Username or Phone Number',
                                  prefixIcon: Icon(
                                    Icons.person_2,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height: MediaQuery.of(context).size.height *
                                      0.058,
                                  decoration: BoxDecoration(
                                    // color: ThemeColours.reddishClr,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                            
                              TextButton(
                                onPressed: () async {},
                                child: const Text(
                                  'Forgot/Reset password',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                    
                  
                
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.058,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.person_add,
                              color: Colors.white,
                            ),
                            Text(
                              'Continue as Client',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),

          ],
        ),
      ),  
      
      ),
    );
  }
}