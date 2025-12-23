import 'package:flutter/material.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs({super.key});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  int selectedIndex = 0;

  final List<Map<String, String>> categories = [
    {"title": "Burger", "emoji": "🍔"},
    {"title": "Pizza", "emoji": "🍕"},
    {"title": "tacos", "emoji": "🥙"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              categories.length,
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.red
                      : Colors.grey.shade300,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),

          SizedBox(height: 12),

          Row(
            children: List.generate(
              categories.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index ? Colors.red : Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.red),
                  ),
                  child: Row(
                    children: [
                      Text(categories[index]["emoji"]!),
                      SizedBox(width: 6),
                      Text(
                        categories[index]["title"]!,
                        style: TextStyle(
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
