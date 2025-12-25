import 'package:flutter/material.dart';
import 'package:project/class/menuItem.dart';
import 'package:project/pages/foodDetails.dart';
import 'package:project/pages/home.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        
     },
    );
  }
}

class  Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: const Text('Welcome to the Flutter App!'),
      ),
    );
  }
}