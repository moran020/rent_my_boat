import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String text;

  const LabelText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.41,
            )),
        const SizedBox(height: 5)
      ],
    );
  }
}
