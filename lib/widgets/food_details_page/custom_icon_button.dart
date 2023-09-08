import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? iconData;
  final Color iconColor;
  final Color backgroundColor;
  final double iconSize;
  final String? imageUrl;

  const CustomIconButton({
    super.key,
    required this.iconColor,
    required this.backgroundColor,
    required this.iconSize,
    this.iconData,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 75, right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        height: 35,
        width: 35,
        child: Center(
          child: imageUrl != null
              ? Image.network(
                  imageUrl!,
                  height: iconSize,
                  color: iconColor,
                )
              : Icon(
                  iconData,
                  color: iconColor,
                ),
        ),
      ),
    );
  }
}
