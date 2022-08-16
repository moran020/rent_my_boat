import 'package:flutter/material.dart';
import '/data/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

    var tr = AppLocalizations.of(context)!;
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
                  tr.button_save,
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
                  Text(
                    tr.greeting,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                  const SizedBox(height: 10),
                  Text(
                      tr.introduction,
                      style: const TextStyle(
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
                              hintText: tr.nameHint,
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
                                      hintText: tr.dateOfBirthHint,
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
                                      hintText: tr.emailHint,
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
                              hintText: tr.phoneNumberHint,
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
                              hintText: tr.languagesHint,
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
                              hintText: tr.manufactorerHint,
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
                              hintText: tr.modelHint,
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
                              hintText: tr.locationHint,
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
                                      hintText: tr.year,
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
                                      hintText: tr.lengthHint,
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
                                      hintText: tr.cabinsHint,
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
                                      hintText: tr.sleepingPlacesHint,
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
                              hintText: tr.enginePowerHint,
                              isDense: true,
                            ),
                          ),
                        ],
                      ))
                ]),
                const SizedBox(height: 20),
                Text(tr.boatCategory,
                    style: const TextStyle(
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
                                title: Text(tr.houseboat),
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
                                title: Text(tr.catamaran),
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
                                title: Text(tr.sailboats),
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
                                title: Text(tr.yacht),
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
                                title: Text(tr.motorboat),
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
                                title: Text(tr.rib),
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
                                title: Text(tr.jetSki),
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
                Text(tr.instructionOne,
                    style: const TextStyle(
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
                Text(tr.instructionTwo,
                    style: const TextStyle(
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
                        title: Text(tr.bimini),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwo,
                        title: Text(tr.sprayhood),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthree,
                        title: Text(tr.deckShower),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthree = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfour,
                        title: Text(tr.cockpitTable),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfour = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfive,
                        title: Text(tr.cockpitSpeakers),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfive = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedsix,
                        title: Text(tr.cockpitCushions),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedsix = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedseven,
                        title: Text(tr.teakDeck),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedseven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedeight,
                        title: Text(tr.aftBathingPlatform),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedeight = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkednine,
                        title: Text(tr.bathingLadder),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkednine = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedten,
                        title: Text(tr.hotWater),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedten = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedeleven,
                        title: Text(tr.conditioning),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedeleven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwelve,
                        title: Text(tr.fan),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwelve = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirteen,
                        title: Text(tr.heating),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourteen,
                        title: Text(tr.toilet),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfifteen,
                        title: Text(tr.usb),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfifteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedsixteen,
                        title: Text(tr.outboard),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedsixteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedseventeen,
                        title: Text(tr.bowTruster),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedseventeen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedeighteen,
                        title: Text(tr.windlass),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedeighteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkednineteen,
                        title: Text(tr.winches),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkednineteen = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwenty,
                        title: Text(tr.autopilot),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwenty = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyone,
                        title: Text(tr.navigation),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentytwo,
                        title: Text(tr.sounder),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentytwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentythree,
                        title: Text(tr.vhf),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentythree = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyfour,
                        title: Text(tr.maps),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyfour = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyfive,
                        title: Text(tr.fridge),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyfive = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentysix,
                        title: Text(tr.kitchen),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentysix = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyseven,
                        title: Text(tr.oven),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyseven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentyeight,
                        title: Text(tr.dishwasher),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentyeight = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedtwentynine,
                        title: Text(tr.snorkel),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedtwentynine = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirty,
                        title: Text(tr.fishing),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirty = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyone,
                        title: Text(tr.tent),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtytwo,
                        title: Text(tr.sauna),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtytwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtythree,
                        title: Text(tr.generator),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtythree = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyfour,
                        title: Text(tr.panels),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyfour = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyfive,
                        title: Text(tr.inverter),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyfive = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtysix,
                        title: Text(tr.socket),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtysix = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyseven,
                        title: Text(tr.mesh),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyseven = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtyeight,
                        title: Text(tr.beddings),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtyeight = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedthirtynine,
                        title: Text(tr.towels),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedthirtynine = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourty,
                        title: Text(tr.wiFi),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourty = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourtyone,
                        title: Text(tr.outboardMotor),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourtyone = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourtytwo,
                        title: Text(tr.sup),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourtytwo = value!)),
                    CheckboxListTile(
                        contentPadding: const EdgeInsets.all(0),
                        activeColor: pressedButton,
                        value: _checkedfourtythree,
                        title: Text(tr.gennaker),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) =>
                            setState(() => _checkedfourtythree = value!)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    tr.instructionThree,
                    style: const TextStyle(
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
                    hintText: tr.instructionThreeHint,
                    isDense: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                    tr.instructionFour,
                    style: const TextStyle(
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
