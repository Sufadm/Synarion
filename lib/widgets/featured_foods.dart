import 'package:flutter/material.dart';
import 'package:synarion_project/utils/colors.dart';
import 'package:synarion_project/utils/sizedbox.dart';

class FeaturedFoods extends StatelessWidget {
  const FeaturedFoods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: kWhite),
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
                  'https://www.eatingwell.com/thmb/vFO43UyAy2NBfjOG6wADLLCE-Kc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/cucumber-sandwich-eddcc95811f5426094ea5dbea6a6b026.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            children: [
              kHeight15,
              const Text(
                'Delicius Hot Dog',
                style: TextStyle(fontWeight: FontWeight.bold),
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
              backgroundColor: Colors.red,
              radius: 27,
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
