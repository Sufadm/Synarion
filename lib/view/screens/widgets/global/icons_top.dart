import 'package:flutter/material.dart';

class IconsTop extends StatelessWidget {
  final Color color;
  final String image;
  final Icon? icon;

  const IconsTop({
    Key? key,
    required this.image,
    required this.color,
    this.icon,
  }) : super(key: key);

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
          backgroundImage: NetworkImage(image),
          backgroundColor: color,
          radius: 25,
          child: icon,
        ),
      ],
    );
  }
}
