import 'package:flutter/material.dart';

import '../singles/checkbox.dart';

class ModulCheckBox extends StatefulWidget {
  const ModulCheckBox({Key? key}) : super(key: key);

  @override
  State<ModulCheckBox> createState() => _ModulCheckBoxState();
}

bool _checkedone = false;
bool _checkedtwo = false;
bool _checkedthree = false;
bool _checkedfour = false;
bool _checkedfive = false;
bool _checkedsix = false;
bool _checkedseven = false;
bool _checkedeight = false;
bool _checkednine = false;
bool _checkedten = false;
bool _checkedeleven = false;
bool _checkedtwelve = false;
bool _checkedthirteen = false;
bool _checkedfourteen = false;
bool _checkedfifteen = false;
bool _checkedsixteen = false;
bool _checkedseventeen = false;
bool _checkedeighteen = false;
bool _checkednineteen = false;
bool _checkedtwenty = false;
bool _checkedtwentyone = false;
bool _checkedtwentytwo = false;
bool _checkedtwentythree = false;
bool _checkedtwentyfour = false;
bool _checkedtwentyfive = false;
bool _checkedtwentysix = false;
bool _checkedtwentyseven = false;
bool _checkedtwentyeight = false;
bool _checkedtwentynine = false;
bool _checkedthirty = false;
bool _checkedthirtyone = false;
bool _checkedthirtytwo = false;
bool _checkedthirtythree = false;
bool _checkedthirtyfour = false;
bool _checkedthirtyfive = false;
bool _checkedthirtysix = false;
bool _checkedthirtyseven = false;
bool _checkedthirtyeight = false;
bool _checkedthirtynine = false;
bool _checkedfourty = false;
bool _checkedfourtyone = false;
bool _checkedfourtytwo = false;
bool _checkedfourtythree = false;

class _ModulCheckBoxState extends State<ModulCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckBoxCreate(
            value: _checkedone,
            onChanged: (bool? value) => setState(() => _checkedone = value!),
            equipmentName: 'Бимини (тент от солнца)'),
        CheckBoxCreate(
            value: _checkedtwo,
            onChanged: (bool? value) => setState(() => _checkedtwo = value!),
            equipmentName: 'Брызгозащитный козырек'),
        CheckBoxCreate(
            value: _checkedthree,
            onChanged: (bool? value) => setState(() => _checkedthree = value!),
            equipmentName: 'Душ на палубе'),
        CheckBoxCreate(
            value: _checkedfour,
            onChanged: (bool? value) => setState(() => _checkedfour = value!),
            equipmentName: 'Обеденный стол'),
        CheckBoxCreate(
            value: _checkedfive,
            onChanged: (bool? value) => setState(() => _checkedfive = value!),
            equipmentName: 'Стереосистема'),
        CheckBoxCreate(
            value: _checkedsix,
            onChanged: (bool? value) => setState(() => _checkedsix = value!),
            equipmentName: 'Подушки для кабины'),
        CheckBoxCreate(
            value: _checkedseven,
            onChanged: (bool? value) => setState(() => _checkedseven = value!),
            equipmentName: 'Деревянная палуба'),
        CheckBoxCreate(
            value: _checkedeight,
            onChanged: (bool? value) => setState(() => _checkedeight = value!),
            equipmentName: 'Кормовая Купальная Платформа'),
        CheckBoxCreate(
            value: _checkednine,
            onChanged: (bool? value) => setState(() => _checkednine = value!),
            equipmentName: 'Лестница для купания'),
        CheckBoxCreate(
            value: _checkedten,
            onChanged: (bool? value) => setState(() => _checkedten = value!),
            equipmentName: 'Горячая вода'),
        CheckBoxCreate(
            value: _checkedeleven,
            onChanged: (bool? value) => setState(() => _checkedeleven = value!),
            equipmentName: 'Кондиционер'),
        CheckBoxCreate(
            value: _checkedtwelve,
            onChanged: (bool? value) => setState(() => _checkedtwelve = value!),
            equipmentName: 'Вентилятор'),
        CheckBoxCreate(
            value: _checkedthirteen,
            onChanged: (bool? value) =>
                setState(() => _checkedthirteen = value!),
            equipmentName: 'Отопительная система'),
        CheckBoxCreate(
            value: _checkedfourteen,
            onChanged: (bool? value) =>
                setState(() => _checkedfourteen = value!),
            equipmentName: 'Электрический санузел'),
        CheckBoxCreate(
            value: _checkedfifteen,
            onChanged: (bool? value) =>
                setState(() => _checkedfifteen = value!),
            equipmentName: 'USB-розетка'),
        CheckBoxCreate(
            value: _checkedsixteen,
            onChanged: (bool? value) =>
                setState(() => _checkedsixteen = value!),
            equipmentName: 'Шлюпка'),
        CheckBoxCreate(
            value: _checkedseventeen,
            onChanged: (bool? value) =>
                setState(() => _checkedseventeen = value!),
            equipmentName: 'Носовое подруливающее устр.'),
        CheckBoxCreate(
            value: _checkedeighteen,
            onChanged: (bool? value) =>
                setState(() => _checkedeighteen = value!),
            equipmentName: 'Электрический брашпиль'),
        CheckBoxCreate(
            value: _checkednineteen,
            onChanged: (bool? value) =>
                setState(() => _checkednineteen = value!),
            equipmentName: 'Электрические лебедки'),
        CheckBoxCreate(
            value: _checkedtwenty,
            onChanged: (bool? value) => setState(() => _checkedtwenty = value!),
            equipmentName: 'Автопилот'),
        CheckBoxCreate(
            value: _checkedtwentyone,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentyone = value!),
            equipmentName: 'Навигационная система/GPS'),
        CheckBoxCreate(
            value: _checkedtwentytwo,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentytwo = value!),
            equipmentName: 'Измеритель глубины'),
        CheckBoxCreate(
            value: _checkedtwentythree,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentythree = value!),
            equipmentName: 'ОВЧ'),
        CheckBoxCreate(
            value: _checkedtwentyfour,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentyfour = value!),
            equipmentName: 'Карты и гиды'),
        CheckBoxCreate(
            value: _checkedtwentyfive,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentyfive = value!),
            equipmentName: 'Холодильник'),
        CheckBoxCreate(
            value: _checkedtwentysix,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentysix = value!),
            equipmentName: 'Тарелки, приборы, кастрюли'),
        CheckBoxCreate(
            value: _checkedtwentyseven,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentyseven = value!),
            equipmentName: 'Духовка, плита'),
        CheckBoxCreate(
            value: _checkedtwentyeight,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentyeight = value!),
            equipmentName: 'Посудомоечная машина'),
        CheckBoxCreate(
            value: _checkedtwentynine,
            onChanged: (bool? value) =>
                setState(() => _checkedtwentynine = value!),
            equipmentName: 'Ласты, маски, трубки'),
        CheckBoxCreate(
            value: _checkedthirty,
            onChanged: (bool? value) => setState(() => _checkedthirty = value!),
            equipmentName: 'Рыболовные снасти'),
        CheckBoxCreate(
            value: _checkedthirtyone,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtyone = value!),
            equipmentName: 'Палатки, спальные мешки'),
        CheckBoxCreate(
            value: _checkedthirtytwo,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtytwo = value!),
            equipmentName: 'Походная баня и дрова'),
        CheckBoxCreate(
            value: _checkedthirtythree,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtythree = value!),
            equipmentName: 'Генератор'),
        CheckBoxCreate(
            value: _checkedthirtyfour,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtyfour = value!),
            equipmentName: 'Солнечные панели'),
        CheckBoxCreate(
            value: _checkedthirtyfive,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtyfive = value!),
            equipmentName: 'Инвертор'),
        CheckBoxCreate(
            value: _checkedthirtysix,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtysix = value!),
            equipmentName: 'Розетка 220V'),
        CheckBoxCreate(
            value: _checkedthirtyseven,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtyseven = value!),
            equipmentName: 'Защитная сетка для детей'),
        CheckBoxCreate(
            value: _checkedthirtyeight,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtyeight = value!),
            equipmentName: 'Чистое постельное белье'),
        CheckBoxCreate(
            value: _checkedthirtynine,
            onChanged: (bool? value) =>
                setState(() => _checkedthirtynine = value!),
            equipmentName: 'Чистые полотенца'),
        CheckBoxCreate(
            value: _checkedfourty,
            onChanged: (bool? value) => setState(() => _checkedfourty = value!),
            equipmentName: 'Wi-Fi на борту'),
        CheckBoxCreate(
            value: _checkedfourtyone,
            onChanged: (bool? value) =>
                setState(() => _checkedfourtyone = value!),
            equipmentName: 'Подвесной двигатель'),
        CheckBoxCreate(
            value: _checkedfourtytwo,
            onChanged: (bool? value) =>
                setState(() => _checkedfourtytwo = value!),
            equipmentName: 'SUP-доска'),
        CheckBoxCreate(
            value: _checkedfourtythree,
            onChanged: (bool? value) =>
                setState(() => _checkedfourtythree = value!),
            equipmentName: 'Ганнакер'),
      ],
    );
  }
}
