import 'package:flutter/material.dart';

class HeaderMiddleText extends StatelessWidget {
  final String text;

  const HeaderMiddleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 0.5));
  }
}
