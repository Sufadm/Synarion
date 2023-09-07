import 'package:flutter/material.dart';

class IconsTop extends StatelessWidget {
  final String imageUrl;
  final Color color;

  const IconsTop({
    super.key,
    required this.imageUrl,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        CircleAvatar(
          backgroundColor: color,
          backgroundImage: NetworkImage(
            imageUrl,
          ),
          radius: 25,
        ),
      ],
    );
  }
}
