import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rent_my_boat/data/helpers_owner_form/singles/dropdownbutton_multiselection.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/package_dropdownbutton.dart';

import '../singles/textformfield.dart';

class ModuleTexFormField extends StatefulWidget {
  const ModuleTexFormField({Key? key}) : super(key: key);

  @override
  State<ModuleTexFormField> createState() => _ModuleTexFormFieldState();
}

final _formKey = GlobalKey<FormState>();

final TextEditingController nameController = TextEditingController();
final TextEditingController dateOfBirthController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneNumberController = TextEditingController();
final MultiValueDropDownController languagesController =
    MultiValueDropDownController();
final TextEditingController manufBoatController = TextEditingController();
final TextEditingController modelBoatController = TextEditingController();
final TextEditingController locationController = TextEditingController();
final TextEditingController capacityController = TextEditingController();
final TextEditingController lenghtBoatController = TextEditingController();
final TextEditingController cabinsNumberController = TextEditingController();
final TextEditingController bedNumderController = TextEditingController();
final TextEditingController powerBoatController = TextEditingController();
final TextEditingController addEquipment = TextEditingController();

class _ModuleTexFormFieldState extends State<ModuleTexFormField> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormFieldCreate(
                controller: nameController,
                hintText: tr.nameHint,
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: dateOfBirthController,
                        hintText: tr.dateOfBirthHint,
                        keyboardType: TextInputType.text),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: emailController,
                        hintText: tr.emailHint,
                        keyboardType: TextInputType.emailAddress),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: phoneNumberController,
                hintText: tr.phoneNumberHint,
                keyboardType: TextInputType.number),
            const SizedBox(height: 10),
            //DropdownTextField with multiselection of user language
            DropDownButtonCreate(
              submitButtonText: tr.button_save,
              hintText: tr.languagesHint,
              onChanged: (val) {
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: manufBoatController,
                hintText: tr.manufactorerHint,
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: modelBoatController,
                hintText: tr.modelHint,
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: locationController,
                hintText: tr.locationHint,
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: capacityController,
                        hintText: tr.year,
                        keyboardType: TextInputType.text),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: lenghtBoatController,
                        hintText: tr.lengthHint,
                        keyboardType: TextInputType.text),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: cabinsNumberController,
                        hintText: tr.cabinsHint,
                        keyboardType: TextInputType.number),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: bedNumderController,
                        hintText: tr.sleepingPlacesHint,
                        keyboardType: TextInputType.number),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: powerBoatController,
                hintText: tr.enginePowerHint,
                keyboardType: TextInputType.text),
          ],
        ));
  }
}
