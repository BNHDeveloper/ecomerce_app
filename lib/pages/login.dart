import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';
import 'package:project/widget/HeaderAuth.dart';
import 'package:project/widget/inputFailed.dart';
import 'package:project/Constatnt/constant.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderAuth(isLogin: true),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    //  Email
                    InputFailed(
                      keyType: TextInputType.emailAddress,
                      hintText: "Email address",
                      scureText: false,
                      prefixIcon: const Icon(Icons.email),
                    ),

                    const SizedBox(height: 15),

                    //  Password
                    InputFailed(
                      keyType: TextInputType.text,
                      hintText: "Password",
                      scureText: true,
                      prefixIcon: const Icon(Icons.lock),
                    ),

                    const SizedBox(height: 10),

                    //  Forget Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: red,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    //  Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    //  Google Login
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/img/google.png",
                            height: 22,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Login with Google",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
