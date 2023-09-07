import 'package:flutter/material.dart';
import 'package:synarion_project/utils/colors.dart';

class CategorieFoodsOptions extends StatelessWidget {
  const CategorieFoodsOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'FEATURED',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          'COMBOS',
          style: TextStyle(color: kgrey),
        ),
        Text(
          'FAVOURITES',
          style: TextStyle(color: kgrey),
        ),
        Text(
          'RECOMMENDED',
          style: TextStyle(color: kgrey),
        ),
      ],
    );
  }
}
