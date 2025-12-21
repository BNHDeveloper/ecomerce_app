import 'package:flutter/material.dart';
import 'package:project/Constatnt/constant.dart';
import 'package:project/widget/NavBarSection.dart';
import 'package:project/widget/NavHaeder.dart';
import 'package:project/widget/inputFailed.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      drawer: Drawer(
        backgroundColor: const Color(0xFFF6F6F6),
        child:NavBarSection()
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: 
        NavHaeder()
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(15, 251, 0, 0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration:InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: grey,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ),
            )
          ],
        )
      ),
    );
  }
}
