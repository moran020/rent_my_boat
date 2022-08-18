import 'package:flutter/material.dart';

import '../singles/textformfield.dart';

class ModulTexFormField extends StatefulWidget {
  const ModulTexFormField({Key? key}) : super(key: key);

  @override
  State<ModulTexFormField> createState() => _ModulTexFormFieldState();
}

final _formKey = GlobalKey<FormState>();

final TextEditingController nameController = TextEditingController();
final TextEditingController dateOfBirthController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneNumberController = TextEditingController();
final TextEditingController languagesController = TextEditingController();
final TextEditingController manufBoatController = TextEditingController();
final TextEditingController modelBoatController = TextEditingController();
final TextEditingController locationController = TextEditingController();
final TextEditingController capacityController = TextEditingController();
final TextEditingController lenghtBoatController = TextEditingController();
final TextEditingController cabinsNumberController = TextEditingController();
final TextEditingController bedNumderController = TextEditingController();
final TextEditingController powerBoatController = TextEditingController();
final TextEditingController addEquipment = TextEditingController();

class _ModulTexFormFieldState extends State<ModulTexFormField> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormFieldCreate(
                controller: nameController,
                hintText: 'ФИО',
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: dateOfBirthController,
                        hintText: 'Дата рождения',
                        keyboardType: TextInputType.text),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: emailController,
                        hintText: 'E-mail',
                        keyboardType: TextInputType.emailAddress),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: phoneNumberController,
                hintText: 'Номер телефона',
                keyboardType: TextInputType.number),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: languagesController,
                hintText: 'Языки',
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: manufBoatController,
                hintText: 'Производитель лодки',
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: modelBoatController,
                hintText: 'Модель лодки',
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: locationController,
                hintText: 'Страна, город местонахождения',
                keyboardType: TextInputType.text),
            const SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: capacityController,
                        hintText: 'Вместимость',
                        keyboardType: TextInputType.text),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: lenghtBoatController,
                        hintText: 'Длина в метрах',
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
                        hintText: 'Кол-во кают',
                        keyboardType: TextInputType.number),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: TextFormFieldCreate(
                        controller: bedNumderController,
                        hintText: 'Cпальные места',
                        keyboardType: TextInputType.number),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TextFormFieldCreate(
                controller: powerBoatController,
                hintText: 'Мощность двигателя',
                keyboardType: TextInputType.text),
          ],
        ));
  }
}
