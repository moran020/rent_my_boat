import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';

class ImageContainerButtonCreate extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;

  const ImageContainerButtonCreate({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: IconButton(icon: icon, onPressed: onPressed),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: photoContainer),
    );
  }
}
