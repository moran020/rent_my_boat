import 'package:flutter/material.dart';
import '/data/colors.dart';

enum TypeBoatList {
  houseboat,
  catamaran,
  sailboat,
  yacht,
  motorboat,
  ribboat,
  hydrocycle,
}

class OwnerForm extends StatefulWidget {
  const OwnerForm({Key? key}) : super(key: key);

  @override
  FormState createState() => FormState();
}

class FormState extends State {
  final _formKey = GlobalKey<FormState>();
  TypeBoatList _type = TypeBoatList.catamaran;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: background,
          leading: IconButton(
            icon: Image.asset('assets/icons/chevron_left.png'),
            onPressed: (() {
              Navigator.pop(context);
            }),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  'Сохранить',
                  style: TextStyle(color: basicText, fontSize: 16),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.add_reaction_outlined,
                          size: 50,
                        ),
                        onPressed: () {}),
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    'Давайте знакомиться!',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      'Загрузите ваше самое лучшее фото и заполните анкету',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5)),
                  const SizedBox(height: 20),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            cursorColor: activeButton,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 11),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: activeButton,
                              )),
                              hintText: 'ФИО',
                              isDense: true,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: TextFormField(
                                    cursorColor: activeButton,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 11),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 2,
                                        color: activeButton,
                                      )),
                                      hintText: 'Дата рождения',
                                      isDense: true,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Flexible(
                                  flex: 1,
                                  child: TextFormField(
                                    cursorColor: activeButton,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 11),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 2,
                                        color: activeButton,
                                      )),
                                      hintText: 'E-mail',
                                      isDense: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            cursorColor: activeButton,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 11),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: activeButton,
                              )),
                              hintText: 'Телефон',
                              isDense: true,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            cursorColor: activeButton,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 11),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: activeButton,
                              )),
                              hintText: 'Языки',
                              isDense: true,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            cursorColor: activeButton,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 11),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: activeButton,
                              )),
                              hintText: 'Производитель лодки',
                              isDense: true,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            cursorColor: activeButton,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 11),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: activeButton,
                              )),
                              hintText: 'Модель лодки',
                              isDense: true,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            cursorColor: activeButton,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 11),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: activeButton,
                              )),
                              hintText: 'Страна, город местонахождения',
                              isDense: true,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: TextFormField(
                                    cursorColor: activeButton,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 11),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 2,
                                        color: activeButton,
                                      )),
                                      hintText: 'Вместимость',
                                      isDense: true,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Flexible(
                                  flex: 1,
                                  child: TextFormField(
                                    cursorColor: activeButton,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 11),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 2,
                                        color: activeButton,
                                      )),
                                      hintText: 'Длина в метрах',
                                      isDense: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: TextFormField(
                                    cursorColor: activeButton,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 11),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 2,
                                        color: activeButton,
                                      )),
                                      hintText: 'Кол-во кают',
                                      isDense: true,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Flexible(
                                  flex: 1,
                                  child: TextFormField(
                                    cursorColor: activeButton,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 11),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 2,
                                        color: activeButton,
                                      )),
                                      hintText: 'Спальные места',
                                      isDense: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            cursorColor: activeButton,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 11),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: activeButton,
                              )),
                              hintText: 'Мощность двигателя',
                              isDense: true,
                            ),
                          ),
                        ],
                      ))
                ]),
                const SizedBox(height: 20),
                const Text('К какой категории относится ваша лодка?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
                const SizedBox(height: 15),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                activeColor: activeButton,
                                title: const Text('Хаусбоат'),
                                value: TypeBoatList.houseboat,
                                groupValue: _type,
                                onChanged: (TypeBoatList? value) {
                                  setState(() {
                                    _type = value!;
                                  });
                                }),
                            RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                activeColor: activeButton,
                                title: const Text('Катамаран'),
                                value: TypeBoatList.catamaran,
                                groupValue: _type,
                                onChanged: (TypeBoatList? value) {
                                  setState(() {
                                    _type = value!;
                                  });
                                }),
                            RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                activeColor: activeButton,
                                title: const Text('Парусное судно'),
                                value: TypeBoatList.sailboat,
                                groupValue: _type,
                                onChanged: (TypeBoatList? value) {
                                  setState(() {
                                    _type = value!;
                                  });
                                }),
                            RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                activeColor: activeButton,
                                title: const Text('Яхта'),
                                value: TypeBoatList.yacht,
                                groupValue: _type,
                                onChanged: (TypeBoatList? value) {
                                  setState(() {
                                    _type = value!;
                                  });
                                }),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                activeColor: activeButton,
                                title: const Text('Моторное судно'),
                                value: TypeBoatList.motorboat,
                                groupValue: _type,
                                onChanged: (TypeBoatList? value) {
                                  setState(() {
                                    _type = value!;
                                  });
                                }),
                            RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                activeColor: activeButton,
                                title: const Text('RIB - лодка'),
                                value: TypeBoatList.ribboat,
                                groupValue: _type,
                                onChanged: (TypeBoatList? value) {
                                  setState(() {
                                    _type = value!;
                                  });
                                }),
                            RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                activeColor: activeButton,
                                title: const Text('Гидроцикл'),
                                value: TypeBoatList.hydrocycle,
                                groupValue: _type,
                                onChanged: (TypeBoatList? value) {
                                  setState(() {
                                    _type = value!;
                                  });
                                }),
                            const SizedBox(
                              height: 55,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('Загрузите несколько фото лодки снаружи и внутри',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 130,
                            width: 175,
                            color: pressedButton,
                            child: IconButton(
                                icon: Image.asset('assets/icons/speedboat.png'),
                                onPressed: (() {})),
                          ),
                          Container(
                            height: 130,
                            width: 175,
                            color: pressedButton,
                            child: IconButton(
                                icon: Image.asset('assets/icons/ship.png'),
                                onPressed: (() {})),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 130,
                            width: 175,
                            color: pressedButton,
                            child: IconButton(
                                icon: Image.asset('assets/icons/ferry.png'),
                                onPressed: (() {})),
                          ),
                          Container(
                            height: 130,
                            width: 175,
                            color: pressedButton,
                            child: IconButton(
                                icon:
                                    Image.asset('assets/icons/motor_boat.png'),
                                onPressed: (() {})),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Отметьте, какое оборудование есть на вашей лодке',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedone,
                        title: const Text('Бимини(тент от солнца)'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwo,
                        title: const Text('Брызгозащитный козырёк'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthree,
                        title: const Text('Душ на палубе'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthree = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfour,
                        title: const Text('Обеденный стол'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfour = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfive,
                        title: const Text('Стереосистема'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfive = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedsix,
                        title: const Text('Подушки для кабины'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedsix = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedseven,
                        title: const Text('Деревянная палуба'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedseven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedeight,
                        title: const Text('Кормовая Купальная Платформа'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedeight = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkednine,
                        title: const Text('Лестница для купания'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkednine = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedten,
                        title: const Text('Горячая вода'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedten = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedeleven,
                        title: const Text('Кондиционер'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedeleven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwelve,
                        title: const Text('Вентилятор'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwelve = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirteen,
                        title: const Text('Отопительная система'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourteen,
                        title: const Text('Электрический санузел'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfifteen,
                        title: const Text('USB-розетка'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfifteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedsixteen,
                        title: const Text('Шлюпка'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedsixteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedseventeen,
                        title: const Text('Носовое подруливающее уст.'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedseventeen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedeighteen,
                        title: const Text('Электрический брашпиль'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedeighteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkednineteen,
                        title: const Text('Электрические лебедки'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkednineteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwenty,
                        title: const Text('Автопилот'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwenty = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyone,
                        title: const Text('Навигационная система/GPS'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentytwo,
                        title: const Text('Измеритель глубины'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentytwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentythree,
                        title: const Text('ОВЧ'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentythree = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyfour,
                        title: const Text('Карты и гиды'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyfour = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyfive,
                        title: const Text('Холодильник'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyfive = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentysix,
                        title: const Text('Тарелки, приборы, кастрюли'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentysix = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyseven,
                        title: const Text('Духовка/плита'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyseven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyeight,
                        title: const Text('Посудомоечная машина'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyeight = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentynine,
                        title: const Text('Ласты, маски, трубки'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentynine = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirty,
                        title: const Text('Рыболовные снасти'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirty = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyone,
                        title: const Text('Палатки, спальные мешки'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtytwo,
                        title: const Text('Походная баня и дрова'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtytwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtythree,
                        title: const Text('Генератор'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtythree = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyfour,
                        title: const Text('Солнечные панели'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyfour = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyfive,
                        title: const Text('Инвертор'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyfive = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtysix,
                        title: const Text('Розетка 220V'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtysix = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyseven,
                        title: const Text('Защитная сетка для детей'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyseven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyeight,
                        title: const Text('Чистое постельное белье'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyeight = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtynine,
                        title: const Text('Чистые полотенца'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtynine = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourty,
                        title: const Text('Wi-Fi на борту'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourty = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourtyone,
                        title: const Text('Подвесной двигатель'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourtyone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourtytwo,
                        title: const Text('SUP-доска'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourtytwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourtythree,
                        title: const Text('Ганнакер'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourtythree = value!)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                    'Если в списке выше не было указано ваше оборудование, перечислите его',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLines: 4,
                  cursorColor: activeButton,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 11),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                      color: activeButton,
                    )),
                    hintText: 'Оборудование на борту...',
                    isDense: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    'Отметьте даты, когда вы готовы совершать плаванье в роли капитана, и когда ваша лодка готова к аренде',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: double.infinity,
                )
              ],
            ),
          ),
        ));
  }
}
