import 'package:flutter/material.dart';
import 'package:project/Constatnt/constant.dart';
import 'package:project/Provider/cart.dart';
import 'package:project/widget/sumeryRow.dart';
import 'package:provider/provider.dart';
import 'package:project/widget/CardOrder.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(232, 255, 228, 228),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: red,
              size: 20,
            ),
          ),
        ),
        title: const Text(
          'Order details',
          style: TextStyle(
            color: red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Expanded(
              child: ListView(
                children: [
                  Consumer<CartData>(
                    builder: ((context, item, child) {
                      return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: item.selectedorder.length,
                      itemBuilder: (context, index) {
                        return CardOrder(item: item.selectedorder[index]);
                      },
                    );
                    }),
                  ),
                ],
              ),
            ),

            Container(
              height: 1,
              color: const Color.fromARGB(255, 195, 194, 194),
              margin: const EdgeInsets.symmetric(vertical: 20),
            ),

            // Order Summary
            Column(
              children: [
                SummaryRow(title: 'Sub -Total', value: '\$50'),
                const SizedBox(height: 12),
                SummaryRow(title: 'Delivery Charge', value: '\$5'),
                const SizedBox(height: 12),
                SummaryRow(
                  title: 'Discount',
                  value: '-\$5',
                  valueColor: Color.fromARGB(255, 3, 192, 10),
                ),
                const SizedBox(height: 16),
                Container(height: 1, color: Colors.grey.shade300),
                const SizedBox(height: 16),
                SummaryRow(
                  title: 'Total',
                  value: '\$50',
                  titleStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  valueStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Place Order Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Place My Order',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}