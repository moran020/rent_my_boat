import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../singles/checkbox.dart';

class ModuleCheckBox extends StatefulWidget {
  const ModuleCheckBox({Key? key}) : super(key: key);

  @override
  State<ModuleCheckBox> createState() => _ModuleCheckBoxState();
}

bool _bimini = false;
bool _sprayhood = false;
bool _deckShower = false;
bool _cockpitTable = false;
bool _cockpitSpeakers = false;
bool _cockpitCushions = false;
bool _teakDeck = false;
bool _aftBathingPlatform = false;
bool _bathingLadder = false;
bool _hotWater = false;
bool _conditioning = false;
bool _fan = false;
bool _heating = false;
bool _toilet = false;
bool _usb = false;
bool _outboard = false;
bool _bowTruster = false;
bool _windlass = false;
bool _winches = false;
bool _autopilot = false;
bool _navigation = false;
bool _sounder = false;
bool _vhf = false;
bool _maps = false;
bool _fridge = false;
bool _kitchen = false;
bool _oven = false;
bool _dishwasher = false;
bool _snorkel = false;
bool _fishing = false;
bool _tent = false;
bool _sauna = false;
bool _generator = false;
bool _panels = false;
bool _inverter = false;
bool _socket = false;
bool _mesh = false;
bool _beddings = false;
bool _towels = false;
bool _wiFi = false;
bool _outboardMotor = false;
bool _sup = false;
bool _gennaker = false;

class _ModuleCheckBoxState extends State<ModuleCheckBox> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;

    return Column(
      children: [
        CheckBoxCreate(
            value: _bimini,
            onChanged: (bool? value) => setState(() => _bimini = value!),
            equipmentName: tr.bimini),
        CheckBoxCreate(
            value: _sprayhood,
            onChanged: (bool? value) => setState(() => _sprayhood = value!),
            equipmentName: tr.sprayhood),
        CheckBoxCreate(
            value: _deckShower,
            onChanged: (bool? value) => setState(() => _deckShower = value!),
            equipmentName: tr.deckShower),
        CheckBoxCreate(
            value: _cockpitTable,
            onChanged: (bool? value) => setState(() => _cockpitTable = value!),
            equipmentName: tr.cockpitTable),
        CheckBoxCreate(
            value: _cockpitSpeakers,
            onChanged: (bool? value) =>
                setState(() => _cockpitSpeakers = value!),
            equipmentName: tr.cockpitSpeakers),
        CheckBoxCreate(
            value: _cockpitCushions,
            onChanged: (bool? value) =>
                setState(() => _cockpitCushions = value!),
            equipmentName: tr.cockpitCushions),
        CheckBoxCreate(
            value: _teakDeck,
            onChanged: (bool? value) => setState(() => _teakDeck = value!),
            equipmentName: tr.teakDeck),
        CheckBoxCreate(
            value: _aftBathingPlatform,
            onChanged: (bool? value) =>
                setState(() => _aftBathingPlatform = value!),
            equipmentName: tr.aftBathingPlatform),
        CheckBoxCreate(
            value: _bathingLadder,
            onChanged: (bool? value) => setState(() => _bathingLadder = value!),
            equipmentName: tr.bathingLadder),
        CheckBoxCreate(
            value: _hotWater,
            onChanged: (bool? value) => setState(() => _hotWater = value!),
            equipmentName: tr.hotWater),
        CheckBoxCreate(
            value: _conditioning,
            onChanged: (bool? value) => setState(() => _conditioning = value!),
            equipmentName: tr.conditioning),
        CheckBoxCreate(
            value: _fan,
            onChanged: (bool? value) => setState(() => _fan = value!),
            equipmentName: tr.fan),
        CheckBoxCreate(
            value: _heating,
            onChanged: (bool? value) => setState(() => _heating = value!),
            equipmentName: tr.heating),
        CheckBoxCreate(
            value: _toilet,
            onChanged: (bool? value) => setState(() => _toilet = value!),
            equipmentName: tr.toilet),
        CheckBoxCreate(
            value: _usb,
            onChanged: (bool? value) => setState(() => _usb = value!),
            equipmentName: tr.usb),
        CheckBoxCreate(
            value: _outboard,
            onChanged: (bool? value) => setState(() => _outboard = value!),
            equipmentName: tr.outboard),
        CheckBoxCreate(
            value: _bowTruster,
            onChanged: (bool? value) => setState(() => _bowTruster = value!),
            equipmentName: tr.bowTruster),
        CheckBoxCreate(
            value: _windlass,
            onChanged: (bool? value) => setState(() => _windlass = value!),
            equipmentName: tr.windlass),
        CheckBoxCreate(
            value: _winches,
            onChanged: (bool? value) => setState(() => _winches = value!),
            equipmentName: tr.winches),
        CheckBoxCreate(
            value: _autopilot,
            onChanged: (bool? value) => setState(() => _autopilot = value!),
            equipmentName: tr.autopilot),
        CheckBoxCreate(
            value: _navigation,
            onChanged: (bool? value) => setState(() => _navigation = value!),
            equipmentName: tr.navigation),
        CheckBoxCreate(
            value: _sounder,
            onChanged: (bool? value) => setState(() => _sounder = value!),
            equipmentName: tr.sounder),
        CheckBoxCreate(
            value: _vhf,
            onChanged: (bool? value) => setState(() => _vhf = value!),
            equipmentName: tr.vhf),
        CheckBoxCreate(
            value: _maps,
            onChanged: (bool? value) => setState(() => _maps = value!),
            equipmentName: tr.maps),
        CheckBoxCreate(
            value: _fridge,
            onChanged: (bool? value) => setState(() => _fridge = value!),
            equipmentName: tr.fridge),
        CheckBoxCreate(
            value: _kitchen,
            onChanged: (bool? value) => setState(() => _kitchen = value!),
            equipmentName: tr.kitchen),
        CheckBoxCreate(
            value: _oven,
            onChanged: (bool? value) => setState(() => _oven = value!),
            equipmentName: tr.oven),
        CheckBoxCreate(
            value: _dishwasher,
            onChanged: (bool? value) => setState(() => _dishwasher = value!),
            equipmentName: tr.dishwasher),
        CheckBoxCreate(
            value: _snorkel,
            onChanged: (bool? value) => setState(() => _snorkel = value!),
            equipmentName: tr.snorkel),
        CheckBoxCreate(
            value: _fishing,
            onChanged: (bool? value) => setState(() => _fishing = value!),
            equipmentName: tr.fishing),
        CheckBoxCreate(
            value: _tent,
            onChanged: (bool? value) => setState(() => _tent = value!),
            equipmentName: tr.tent),
        CheckBoxCreate(
            value: _sauna,
            onChanged: (bool? value) => setState(() => _sauna = value!),
            equipmentName: tr.sauna),
        CheckBoxCreate(
            value: _generator,
            onChanged: (bool? value) => setState(() => _generator = value!),
            equipmentName: tr.generator),
        CheckBoxCreate(
            value: _panels,
            onChanged: (bool? value) => setState(() => _panels = value!),
            equipmentName: tr.panels),
        CheckBoxCreate(
            value: _inverter,
            onChanged: (bool? value) => setState(() => _inverter = value!),
            equipmentName: tr.inverter),
        CheckBoxCreate(
            value: _socket,
            onChanged: (bool? value) => setState(() => _socket = value!),
            equipmentName: tr.socket),
        CheckBoxCreate(
            value: _mesh,
            onChanged: (bool? value) => setState(() => _mesh = value!),
            equipmentName: tr.mesh),
        CheckBoxCreate(
            value: _beddings,
            onChanged: (bool? value) => setState(() => _beddings = value!),
            equipmentName: tr.beddings),
        CheckBoxCreate(
            value: _towels,
            onChanged: (bool? value) => setState(() => _towels = value!),
            equipmentName: tr.towels),
        CheckBoxCreate(
            value: _wiFi,
            onChanged: (bool? value) => setState(() => _wiFi = value!),
            equipmentName: tr.wiFi),
        CheckBoxCreate(
            value: _outboardMotor,
            onChanged: (bool? value) => setState(() => _outboardMotor = value!),
            equipmentName: tr.outboardMotor),
        CheckBoxCreate(
            value: _sup,
            onChanged: (bool? value) => setState(() => _sup = value!),
            equipmentName: tr.sup),
        CheckBoxCreate(
            value: _gennaker,
            onChanged: (bool? value) => setState(() => _gennaker = value!),
            equipmentName: tr.gennaker),
      ],
    );
  }
}
