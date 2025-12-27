import 'package:flutter/material.dart';
import 'package:project/Constatnt/constant.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/singup.dart';

class HeaderAuth extends StatelessWidget {
  final bool isLogin;

  const HeaderAuth({
    super.key,
    required this.isLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image Header
        Container(
          height: 230,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFF3F3F3),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            // image: const DecorationImage(
            //   image: AssetImage("assets/img/Picture5.png"),
            //   fit: BoxFit.cover,
            //   alignment: Alignment(0, -.9),
            // ),
          ),
          child: Image(
            image: AssetImage("assets/img/login.png"),
            height: 150,
            width: 150,
            ),
        ),

        const SizedBox(height: 30),

        // Tabs
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Create Account
            GestureDetector(
              onTap: () {
                if (!isLogin) return;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Singup(),
                  ),
                );
              },
              child: Column(
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      color: isLogin ? Colors.black : red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (!isLogin)
                    Container(
                      height: 2,
                      width: 50,
                      color: red,
                    ),
                ],
              ),
            ),

            const SizedBox(width: 30),

            // Login
            GestureDetector(
              onTap: () {
                if (isLogin) return;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: isLogin ? red : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (isLogin)
                    Container(
                      height: 2,
                      width: 50, 
                      color: red,
                    ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}
