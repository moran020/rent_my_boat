import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';

class CircleAvatarCreate extends StatelessWidget {
  final void Function()? onPressed;
  final ImageProvider<Object>? file;

  const CircleAvatarCreate(
      {Key? key, required this.onPressed, required this.file})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: file,
      backgroundColor: photoContainer,
      radius: 40,
      child: SizedBox(
        height: 40,
        width: 40,
        child: IconButton(
            padding: const EdgeInsets.all(0.0),
            icon: Image.asset('assets/icons/smile.png'),
            onPressed: onPressed),
      ),
    );
  }
}
