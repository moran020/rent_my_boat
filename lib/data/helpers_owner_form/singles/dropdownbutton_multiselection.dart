import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';
import 'package:rent_my_boat/data/helpers_owner_form/modules/module_textformfield.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/package_dropdownbutton.dart';

class DropDownButtonCreate extends StatelessWidget {
  final String submitButtonText;
  final String hintText;
  final void Function(dynamic)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  const DropDownButtonCreate(
      {Key? key,
      required this.submitButtonText,
      required this.hintText,
      required this.onChanged,
      required this.validator,
      required this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropDownTextField.multiSelection(
        validator: validator,
        multiController: languagesController,
        textStyle: const TextStyle(fontSize: 17),
        submitButtonColor: activeButton,
        listPadding: ListPadding(top: 10, bottom: 10),
        submitButtonText: submitButtonText,
        submitButtonTextStyle: TextStyle(color: background),
        dropdownRadius: 8,
        textFieldDecoration: InputDecoration(
          constraints: const BoxConstraints(minHeight: 40, maxHeight: 63),
          isDense: true,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
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
          contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: hintTextColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: activeButton)),
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
