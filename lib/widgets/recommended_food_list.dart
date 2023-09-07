import 'package:flutter/material.dart';
import 'package:synarion_project/utils/sizedbox.dart';
import 'package:synarion_project/view/food_details_page.dart';

class FoodList extends StatelessWidget {
  const FoodList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const FoodDetailsPage();
      })),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        height: 200,
        width: 130,
        child: const Column(
          children: [
            kHeight35,
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ca-times.brightspotcdn.com/dims4/default/54847e8/2147483647/strip/true/crop/2048x1280+0+43/resize/1200x750!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fb2%2Fa5%2Fd673ffac73e3ff63f2f3c095fde9%2Fhomemade-american-cheese-recipes-db'),
                radius: 35,
              ),
            ),
            kHeight10,
            Text('Cheese'),
            Text('₹ 48')
          ],
        ),
      ),
    );
  }
}
