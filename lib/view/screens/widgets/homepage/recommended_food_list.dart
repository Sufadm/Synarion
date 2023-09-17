import 'package:flutter/material.dart';
import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/view/utils/const/colors.dart';
import 'package:synarion_project/view/utils/const/sizedbox.dart';
import 'package:synarion_project/view/screens/food_details_page.dart';

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
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    final itemColor = itemColors[index % itemColors.length];
    final textitemColor = textitemColors[index % itemColors.length];

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
        height: screenheight / 4,
        width: screenwidth / 3,
        child: Column(
          children: [
            kHeight35,
            Center(
              child: CircleAvatar(
                backgroundColor: kWhite,
                backgroundImage: NetworkImage(item.image),
                radius: 35,
              ),
            ),
            kHeight15,
            Text(
              item.name,
              style: TextStyle(
                color: textitemColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '₹ 48',
              style: TextStyle(color: textitemColor),
            )
          ],
        ),
      ),
    );
  }
}
