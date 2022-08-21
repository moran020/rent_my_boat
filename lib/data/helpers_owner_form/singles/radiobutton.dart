import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/typeboatlist.dart';

class RadioButtonCreate extends StatelessWidget {
  final TypeBoatList groupValue;
  final TypeBoatList value;
  final void Function(TypeBoatList?) onChanged;
  final String boatType;

  const RadioButtonCreate({
    Key? key,
    required this.boatType,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: Row(
          children: [
            SizedBox(
              //SizedBox for get radiobutton minimum padding around
              height: 19.0,
              width: 19.0,
              child: Radio(
                  //Сolor of the radiobutton, depending on the click
                  fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                    if (states.contains(MaterialState.disabled)) {
                      return background;
                    }
                    return activeButton;
                  }),
                  visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged),
            ),
            const SizedBox(width: 5),
            Text(
              boatType,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
