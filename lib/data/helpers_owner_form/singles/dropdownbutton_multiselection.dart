import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/package_dropdownbutton.dart';

import '../modules/module_textformfield.dart';
import '../modules/textfield.dart';

class DropDownButtonCreate extends StatelessWidget {
  final String submitButtonText;
  final String hintText;
  final void Function(dynamic)? onChanged;

  const DropDownButtonCreate(
      {Key? key,
      required this.submitButtonText,
      required this.hintText,
      required this.onChanged, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropDownTextField.multiSelection(
        textStyle: const TextStyle(fontSize: 17),
        submitButtonColor: activeButton,
        listPadding: ListPadding(top: 10, bottom: 10),
        submitButtonText: submitButtonText,
        submitButtonTextStyle: TextStyle(color: background),
        multiController: languagesController,
        dropdownRadius: 8,
        textFieldDecoration: InputDecoration(
          constraints: const BoxConstraints(maxHeight: 40),
          isDense: true,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 11),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: activeButton,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 2.5, color: activeButton)),
        ),
        listTextStyle: const TextStyle(
          fontSize: 17,
        ),
        dropDownList: const [
          DropDownValueModel(name: 'Русский', value: "Russian"),
          DropDownValueModel(name: 'English', value: "English"),
          DropDownValueModel(name: 'Deutsch', value: "German"),
          DropDownValueModel(name: 'Español', value: "Spanisch")
        ],
        onChanged: onChanged);
  }
}
