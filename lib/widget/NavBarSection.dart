import "package:flutter/material.dart";
import 'package:project/Constatnt/constant.dart';

class NavBarSection extends StatelessWidget {
  const NavBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            ListTile(
            leading: Icon(Icons.logout,color: red,size: 22,),
            title: Text('logout',style: TextStyle(fontWeight: FontWeight.bold),),onTap: null,),
          ],
        ),
    );
  }
}