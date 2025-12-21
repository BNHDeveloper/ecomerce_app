import 'package:flutter/material.dart';
import 'package:project/Constatnt/constant.dart';

class NavHaeder extends StatelessWidget {
  const NavHaeder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 5),
          const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: red, size: 20),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Address',
                  style: TextStyle(fontSize: 12, color: Color.fromRGBO(117, 117, 117, 1)),
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
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
              backgroundImage: const AssetImage('assets/img/avatar2.png'),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: red, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}