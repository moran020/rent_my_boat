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
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                      const SizedBox(height: 10),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11),
                                  border: OutlineInputBorder(),
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
                                        decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(
                                              top: 10, bottom: 10, left: 11),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 5,
                                                  color: activeButton)),
                                          hintText: 'Дата рождения',
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Flexible(
                                      flex: 1,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 11),
                                          border: OutlineInputBorder(),
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
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11),
                                  border: OutlineInputBorder(),
                                  hintText: 'Телефон',
                                  isDense: true,
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11),
                                  border: OutlineInputBorder(),
                                  hintText: 'Языки',
                                  isDense: true,
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11),
                                  border: OutlineInputBorder(),
                                  hintText: 'Производитель лодки',
                                  isDense: true,
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11),
                                  border: OutlineInputBorder(),
                                  hintText: 'Модель лодки',
                                  isDense: true,
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11),
                                  border: OutlineInputBorder(),
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
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 11),
                                          border: OutlineInputBorder(),
                                          hintText: 'Вместимость',
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Flexible(
                                      flex: 1,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 11),
                                          border: OutlineInputBorder(),
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
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 11),
                                          border: OutlineInputBorder(),
                                          hintText: 'Кол-во кают',
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Flexible(
                                      flex: 1,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 11),
                                          border: OutlineInputBorder(),
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
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11),
                                  border: OutlineInputBorder(),
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
                            SizedBox(
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
                  height: 15,
                ),
                Center(
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
              ],
            ),
          ),
        ));
  }
}
