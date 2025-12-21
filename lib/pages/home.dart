import 'package:flutter/material.dart';
import 'package:project/Constatnt/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      drawer: Drawer(
        backgroundColor: const Color(0xFFF6F6F6),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage('assets/img/avatar2.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nour Elhouda',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'easycodedz@example.com',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            ListTile(
            leading: Icon(Icons.home,color: red,size: 22,),
             title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),onTap: null,),
            ListTile(
            leading: Icon(Icons.shopping_cart_rounded,color: red,size:22,),
            title: Text('Cart',style: TextStyle(fontWeight: FontWeight.bold),),onTap: null,),
            ListTile(
            leading: Icon(Icons.person,color: red,size: 22,),
            title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold),),onTap: null,),
            ListTile(
            leading: Icon(Icons.message,color: red,size: 22,),
            title: Text('chat',style: TextStyle(fontWeight: FontWeight.bold),),onTap: null,),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Container(
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.menu, color: Colors.black, size: 24),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, color: red, size: 20),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Address',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                Text(
                  'Algeria , skikda 21',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: const AssetImage('assets/img/avatar2.png'),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
