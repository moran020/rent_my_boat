import 'package:flutter/material.dart';

import '../singles/radiobutton.dart';
import '../singles/typeboatlist.dart';

class ModulRadioButton extends StatefulWidget {
  const ModulRadioButton({Key? key}) : super(key: key);

  @override
  State<ModulRadioButton> createState() => _ModulRadioButtonState();
}

TypeBoatList type = TypeBoatList.houseboat;

class _ModulRadioButtonState extends State<ModulRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RadioButtonCreate(
                  value: TypeBoatList.houseboat,
                  onChanged: (TypeBoatList? value) {
                    setState(() {
                      type = value!;
                    });
                  },
                  groupValue: type,
                  boatType: 'Хаусбоат',
                )
              ],
            ),
            RadioButtonCreate(
              value: TypeBoatList.catamaran,
              onChanged: (TypeBoatList? value) {
                setState(() {
                  type = value!;
                });
              },
              groupValue: type,
              boatType: 'Катамаран',
            ),
            RadioButtonCreate(
              value: TypeBoatList.sailboat,
              onChanged: (TypeBoatList? value) {
                setState(() {
                  type = value!;
                });
              },
              groupValue: type,
              boatType: 'Парусное судно',
            ),
            RadioButtonCreate(
              value: TypeBoatList.yacht,
              onChanged: (TypeBoatList? value) {
                setState(() {
                  type = value!;
                });
              },
              groupValue: type,
              boatType: 'Яхта',
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioButtonCreate(
              value: TypeBoatList.motorboat,
              onChanged: (TypeBoatList? value) {
                setState(() {
                  type = value!;
                });
              },
              groupValue: type,
              boatType: 'Моторное судно',
            ),
            RadioButtonCreate(
              value: TypeBoatList.ribboat,
              onChanged: (TypeBoatList? value) {
                setState(() {
                  type = value!;
                });
              },
              groupValue: type,
              boatType: 'RIB-лодка',
            ),
            RadioButtonCreate(
              value: TypeBoatList.hydrocycle,
              onChanged: (TypeBoatList? value) {
                setState(() {
                  type = value!;
                });
              },
              groupValue: type,
              boatType: 'Гидроцикл',
            )
          ],
        )
      ],
    );
  }
}
