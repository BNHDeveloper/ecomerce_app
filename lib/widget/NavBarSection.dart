import "package:flutter/material.dart";
import 'package:project/Constatnt/constant.dart';
import 'package:project/Provider/cart.dart';
import 'package:project/pages/OrderDetils.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/login.dart';
import 'package:provider/provider.dart';

class NavBarSection extends StatelessWidget {
  const NavBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage('assets/img/avatar2.png'),
                ),
                const SizedBox(height: 10),
                Consumer<CartData>(
                  builder: (context, cartData, child) {
                    return Text(
                      cartData.username,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 4),
                Consumer<CartData>(
                  builder: (context, cartData, child) {
                    return Text(
                      cartData.email,
                      style: const TextStyle(color: Colors.black54),
                    );
                  },
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: red, size: 22),
            title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_rounded, color: red, size: 22),
            title: Consumer<CartData>(
              builder: (context, cartData, child) {
                final itemCount = cartData.selectedorder.length; // Get item count from your list
                return Row(
                  children: [
                    const Text('Cart', style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    if (itemCount > 0)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          itemCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetails(),
                ),
              );
            } ,
          ),
          const ListTile(
            leading: Icon(Icons.person, color: red, size: 22),
            title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.message, color: red, size: 22),
            title: Text('Chat', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: null,
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: red, size: 22),
            title: const Text('Logout', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}