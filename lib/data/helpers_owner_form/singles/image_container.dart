import 'package:flutter/material.dart';

class ImageContainerButtonCreate extends StatelessWidget {
  final ImageProvider file;
  final void Function()? onPressed;

  const ImageContainerButtonCreate({
    Key? key,
    required this.file,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            fit: BoxFit.fill,
            alignment: FractionalOffset.topCenter,
            image: file,
          )),
      child: TextButton(
        child: const Text(''),
        onPressed: onPressed,
      ),
    );
  }
}
