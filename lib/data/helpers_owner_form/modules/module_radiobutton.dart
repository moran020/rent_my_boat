import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../singles/radiobutton.dart';
import '../singles/typeboatlist.dart';

class ModuleRadioButton extends StatefulWidget {
  const ModuleRadioButton({Key? key}) : super(key: key);

  @override
  State<ModuleRadioButton> createState() => _ModuleRadioButtonState();
}

TypeBoatList type = TypeBoatList.houseboat;

class _ModuleRadioButtonState extends State<ModuleRadioButton> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioButtonCreate(
                value: TypeBoatList.houseboat,
                onChanged: (TypeBoatList? value) {
                  setState(() {
                    type = value!;
                  });
                },
                groupValue: type,
                boatType: tr.houseboat,
              ),
              RadioButtonCreate(
                value: TypeBoatList.catamaran,
                onChanged: (TypeBoatList? value) {
                  setState(() {
                    type = value!;
                  });
                },
                groupValue: type,
                boatType: tr.catamaran,
              ),
              RadioButtonCreate(
                value: TypeBoatList.sailboat,
                onChanged: (TypeBoatList? value) {
                  setState(() {
                    type = value!;
                  });
                },
                groupValue: type,
                boatType: tr.sailboats,
              ),
              RadioButtonCreate(
                value: TypeBoatList.yacht,
                onChanged: (TypeBoatList? value) {
                  setState(() {
                    type = value!;
                  });
                },
                groupValue: type,
                boatType: tr.yacht,
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
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
                boatType: tr.motorboat,
              ),
              RadioButtonCreate(
                value: TypeBoatList.ribboat,
                onChanged: (TypeBoatList? value) {
                  setState(() {
                    type = value!;
                  });
                },
                groupValue: type,
                boatType: tr.rib,
              ),
              RadioButtonCreate(
                value: TypeBoatList.hydrocycle,
                onChanged: (TypeBoatList? value) {
                  setState(() {
                    type = value!;
                  });
                },
                groupValue: type,
                boatType: tr.jetSki,
              )
            ],
          ),
        )
      ],
    );
  }
}
