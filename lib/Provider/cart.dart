import 'package:flutter/material.dart';
import 'package:project/class/itemSelected.dart';

class CartData with ChangeNotifier {
  String username = "Nour Elhouda";
  String email = "easycodedz@example.com";

  List<ItemSelected> selectedorder = [
  ItemSelected(
    price: "20",
    title: "Burger",
    image: "assets/img/humberger1.png",
    number: 1,
  ),
  ItemSelected(
    price: "10",
    title: "pizza",
    image: "assets/img/pizza.png",
    number: 1,
  ),
];

// use "notifyListeners();" at the end of every method
}