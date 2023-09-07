import 'package:flutter/material.dart';
import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/utils/const/colors.dart';
import 'package:synarion_project/utils/const/sizedbox.dart';
import 'package:synarion_project/view/food_details_page.dart';

class FoodList extends StatelessWidget {
  const FoodList({
    super.key,
    required this.item,
    required this.index,
  });
  final FoodListModel item;
  final int index;

  @override
  Widget build(BuildContext context) {
    final itemColor = itemColors[index % itemColors.length];
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return FoodDetailsPage(
          item: item,
        );
      })),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: itemColor,
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
            kHeight15,
            Text(
              item.name,
              style:
                  const TextStyle(color: kBlack, fontWeight: FontWeight.bold),
            ),
            const Text('₹ 48')
          ],
        ),
      ),
    );
  }
}
