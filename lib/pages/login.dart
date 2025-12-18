import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30),
        ),
        backgroundColor: Color(0xFFF71101),
        centerTitle: true,
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "اسم المستخدم",
                    hintStyle: TextStyle(
                      color: Color(0xFF3F3E3E),
                      fontWeight: FontWeight.w600,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromARGB(58, 125, 125, 125)
                      ),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    prefixIcon: Icon(Icons.person),
                    // fillColor: Color.fromARGB(255, 255, 255, 255),
                    // filled: true
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