import 'package:flutter/material.dart';
import 'package:project/class/itemSelected.dart';

class CartData with ChangeNotifier {
  String username = "Nour Elhouda";
  String email = "easycodedz@example.com";

  List<ItemSelected> selectedorder = [
    ItemSelected(
      id: 1,
      price: 20,
      title: "Burger",
      image: "assets/img/humberger1.png",
      number: 1,
    ),
    ItemSelected(
      id: 2,
      price: 10,
      title: "pizza",
      image: "assets/img/pizza.png",
      number: 1,
    ),
  ];

  void addToCart(ItemSelected item) {
    final existingIndex = selectedorder.indexWhere(
      (cartItem) => cartItem.id == item.id,
    );

    if (existingIndex >= 0) {
      incrementQuantity(item.id);
    } else {
      selectedorder.add(item);
      notifyListeners();
    }
  }

  void removeFromCart(int itemId) {
    selectedorder.removeWhere((item) => item.id == itemId);
    notifyListeners();
  }

  void incrementQuantity(int itemId) {
    final index = selectedorder.indexWhere((item) => item.id == itemId);
    if (index >= 0) {
      selectedorder[index].number += 1;
      notifyListeners();
    }
  }

  void decrementQuantity(int itemId) {
    final index = selectedorder.indexWhere((item) => item.id == itemId);
    if (index >= 0 && selectedorder[index].number > 1) {
      selectedorder[index].number -= 1;
      notifyListeners();
    } else if (index >= 0 && selectedorder[index].number == 1) {
      removeFromCart(itemId);
    }
  }

  void clearCart() {
    selectedorder.clear();
    notifyListeners();
  }

  double total() {
    double total = 0;
    for (var ele in selectedorder) {
      total += ele.number * ele.price;
    }
    return total;
  }
}
