import 'package:flutter/material.dart';
import 'package:project/class/menuItem.dart';

const red = Color.fromARGB(255, 250, 2, 2);
const white = Color(0xFFF6F6F6);
const grey = Color(0xFF3F3E3E);
final List<MenuItem> menu = [
  MenuItem(
    description: "Lorem iposom dollars",
    price: "20",
    rating: 4.0,
    title: "Burger",
    image: "assets/img/humberger1.png",
  ),
  MenuItem(
    description: "Lorem iposom dollars",
    price: "10",
    rating: 3.0,
    title: "Tacos",
    image: "assets/img/tacos1.png",
  ),
  MenuItem(
    description: "Lorem iposom dollars",
    price: "15",
    rating: 5.0,
    title: "Pizza",
    image: "assets/img/pizza.png",
  ),
];
