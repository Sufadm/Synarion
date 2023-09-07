import 'package:flutter/material.dart';
import 'package:synarion_project/controller/food_items.dart';
import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/utils/sizedbox.dart';
import 'package:synarion_project/view/food_details_page.dart';

class FoodList extends StatelessWidget {
  const FoodList({
    super.key,
    required this.item,
  });
  final FastFoodItem item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        List<FastFoodItem> allItems = FoodItemsList.convertingMaptoObject();
        return const FoodDetailsPage();
      })),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        height: 200,
        width: 130,
        child: Column(
          children: [
            kHeight35,
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(item.image),
                radius: 35,
              ),
            ),
            kHeight10,
            Text(item.name),
            const Text('₹ 48')
          ],
        ),
      ),
    );
  }
}
