import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';

class TextFormFieldCreate extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final int maxLines;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  const TextFormFieldCreate({
    Key? key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.maxLines,
    required this.validator,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      onFieldSubmitted: onSaved,
      cursorColor: basicText,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: activeButton)),
        errorStyle: TextStyle(
            color: calendarSymbols,
            fontSize: 10,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
        contentPadding: const EdgeInsets.only(
          top: 9,
          bottom: 9,
        ),
        prefix: const Padding(padding: EdgeInsets.only(left: 11.0)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: hintTextColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: activeButton)),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
        isDense: true,
      ),
    );
  }
}
