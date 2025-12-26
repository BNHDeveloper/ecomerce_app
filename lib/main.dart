import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project/Provider/cart.dart';
import 'package:project/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return CartData();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          
       },
      ),
    );
  }
}