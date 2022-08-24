import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';

class TextFormFieldCreate extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  
  const TextFormFieldCreate({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: activeButton,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: activeButton,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(width: 2.5, color: activeButton)),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
        isDense: true,
      ),
    );
  }
}
