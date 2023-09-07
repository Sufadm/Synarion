import 'package:flutter/material.dart';
import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/utils/const/colors.dart';
import 'package:synarion_project/utils/const/sizedbox.dart';
import 'package:synarion_project/view/food_details_page.dart';

class FeaturedFoods extends StatelessWidget {
  const FeaturedFoods({
    super.key,
    required this.item,
  });
  final FoodListModel item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return FoodDetailsPage(item: item);
      })),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: kWhite),
        height: 100,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink[100],
                ),
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight15,
                Text(
                  item.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: const EdgeInsets.only(right: 35),
                    child: const Text('⭐⭐⭐⭐')),
                kHeight5,
                Container(
                    margin: const EdgeInsets.only(right: 70),
                    child: const Text(
                      '₹ 18',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 120, top: 25),
              child: const CircleAvatar(
                backgroundColor: Color(0xFFF35152),
                radius: 27,
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
