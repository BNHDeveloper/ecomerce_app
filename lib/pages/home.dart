import 'package:flutter/material.dart';
import 'package:project/Constatnt/constant.dart';
import 'package:project/pages/foodDetails.dart';
import 'package:project/widget/CardOffer.dart';
import 'package:project/widget/CartFood.dart';
import 'package:project/widget/CategoryTabs.dart';
import 'package:project/widget/NavBarSection.dart';
import 'package:project/widget/NavHaeder.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xF6F6F6FF),
      drawer: Drawer(
        backgroundColor: const Color(0xFFF6F6F6),
        child: NavBarSection(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: NavHaeder(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar 🔭
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 370,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(15, 251, 0, 0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            CardOffer(),
            CategoryTabs(),
            // Card Food Items 🍔
            Container(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: menu.length,
                itemBuilder: (BuildContext context, int index) {
                  final listMeu = menu[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodDetails(item: listMeu),
                        ),
                      );                },
                    child: CartFood(
                      description: listMeu.description,
                      price: listMeu.price,
                      rating: listMeu.rating,
                      title: listMeu.title,
                      image: listMeu.image,
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
