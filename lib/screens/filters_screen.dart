import 'package:flutter/material.dart';
import '/data/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:syncfusion_flutter_core/core.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: const ApplyFiltersButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: appbarLine, width: 2)),
          backgroundColor: background,
          elevation: 0.0,
          // shadowColor: appbarLine ,
          leading: IconButton(
            icon: Image.asset('assets/icons/cross.png'),
            onPressed: (() {
              Navigator.pop(context);
            }),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // TODO: добавить обнуление всех фильтров
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  tr.button_delete,
                  style: TextStyle(
                      letterSpacing: -0.41,
                      color: basicText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.only(top: 32, bottom: 80),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: const TextFields()),
              Title(
                marginTop: 32,
                title: tr.price1per_person,
              ),
              const Sliders(),
              Comment(
                comment: tr.message_price1,
              ),
              Title(
                marginTop: 32,
                title: tr.price2per_day,
              ),
              const Sliders(),
              Comment(
                comment: tr.message_price2,
              ),
              Title(
                marginTop: 32,
                title: tr.price3per_week,
              ),
              const Sliders(),
              Comment(
                comment: tr.message_price3,
              ),
              Title(
                marginTop: 32,
                title: tr.price4_skipper,
              ),
              const Sliders(),
              Comment(
                comment: tr.message_price4,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFieldText(
                hintText: 'Lagoon',
                title: tr.manufactorer,
              ),
              TextFieldText(
                hintText: '52',
                title: tr.model,
              ),
              TextFieldText(
                hintText: '2019',
                title: tr.year,
              ),
              TextFieldText(
                hintText: tr.enginePowerHint,
                title: tr.enginePower,
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class ApplyFiltersButton extends StatefulWidget {
  const ApplyFiltersButton({Key? key}) : super(key: key);

  @override
  State<ApplyFiltersButton> createState() => _ApplyFiltersButtonState();
}

class _ApplyFiltersButtonState extends State<ApplyFiltersButton> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 40,
      child: ElevatedButton(
          child: Text(
            tr.button_useFilters,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.1),
          ),
          onPressed: () {
            {}
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(activeButton),
            elevation: MaterialStateProperty.all(0),
            minimumSize: MaterialStateProperty.all(const Size(550, 40)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
          )),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;

    return Column(
      children: [
        SizedBox(
          child: Row(
            children: [
              TextFieldInt(
                hintText: '12',
                title: tr.capacity,
              ),
              const SizedBox(width: 8),
              TextFieldInt(
                hintText: '4',
                title: tr.cabins,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          child: Row(
            children: [
              TextFieldInt(
                hintText: '8',
                title: tr.sleepingPlaces,
              ),
              const SizedBox(width: 8),
              TextFieldInt(
                hintText: tr.lengthHint,
                title: tr.lengthHint,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class TextFieldInt extends StatefulWidget {
  const TextFieldInt({Key? key, required this.title, required this.hintText})
      : super(key: key);
  final String title;
  final String hintText;

  @override
  State<TextFieldInt> createState() => _TextFieldIntState();
}

class _TextFieldIntState extends State<TextFieldInt> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.005),
          ),
          const SizedBox(
            height: 4,
          ),
          Form(
            child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: activeButton,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: borderColor,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(width: 2.5, color: activeButton)),
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldText extends StatefulWidget {
  const TextFieldText({Key? key, required this.title, required this.hintText})
      : super(key: key);
  final String title;
  final String hintText;

  @override
  State<TextFieldText> createState() => _TextFieldTextState();
}

class _TextFieldTextState extends State<TextFieldText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.005),
          ),
          const SizedBox(
            height: 4,
          ),
          Form(
            child: TextFormField(
              keyboardType: TextInputType.text,
              cursorColor: activeButton,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: borderColor,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(width: 2.5, color: activeButton)),
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sliders extends StatefulWidget {
  const Sliders({Key? key}) : super(key: key);

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  // TODO: изменить значения в зависимости от списка
  double _startValue = 30000.0;
  double _endValue = 70000.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 6.0,
            activeTrackColor: activeButton,
            inactiveTrackColor: inactiveSlider,
            thumbColor: activeButton,
          ),
          child: RangeSlider(
            // TODO: изменить значения в зависимости от списка
            min: 0.0,
            max: 100000.0,
            values: RangeValues(_startValue, _endValue),
            onChanged: (values) {
              setState(() {
                _startValue = values.start;
                _endValue = values.end;
              });
            },
          ),
        ),
        Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Text(
              '${_startValue.toInt()} ₽  - ${_endValue.toInt()} ₽',
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.005),
            ))
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key, required this.marginTop, required this.title})
      : super(key: key);
  final double marginTop;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 16, right: 16, top: marginTop),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, letterSpacing: -0.005),
      ),
    );
  }
}

class Comment extends StatelessWidget {
  const Comment({Key? key, required this.comment}) : super(key: key);
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '*',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              height: 1.2,
              color: greyDisabled,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
              child: Text(
            comment,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              height: 1.2,
              color: greyDisabled,
            ),
          ))
        ],
      ),
    );
  }
}

// объединенный код (не работает конструктор)

// class SliderModule extends StatefulWidget {
//   const SliderModule(
//       {Key? key,
//       required this.marginTop,
//       required this.title,
//       required this.comment})
//       : super(key: key);
//   final double marginTop;
//   final String title;
//   final String comment;

//   @override
//   State<SliderModule> createState() => _SliderModuleState();
// }

// class _SliderModuleState extends State<SliderModule> {
//   // TODO: изменить значения в зависимости от списка
//   double _startValue = 30000.0;
//   double _endValue = 70000.0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         SliderTheme(
//           data: SliderTheme.of(context).copyWith(
//             trackHeight: 6.0,
//             activeTrackColor: activeButton,
//             inactiveTrackColor: inactiveSlider,
//             thumbColor: activeButton,
//           ),
//           child: RangeSlider(
//             // TODO: изменить значения в зависимости от списка
//             min: 0.0,
//             max: 100000.0,
//             values: RangeValues(_startValue, _endValue),
//             onChanged: (values) {
//               setState(() {
//                 _startValue = values.start;
//                 _endValue = values.end;
//               });
//             },
//           ),
//         ),
//         Container(
//             margin: EdgeInsets.only(
//               left: 16,
//               right: 16,
//             ),
//             child: Text(
//               '${_startValue.toInt()} ₽  - ${_endValue.toInt()} ₽',
//               style: TextStyle(
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600,
//                   letterSpacing: -0.005),
//             )),
//         Container(
//           alignment: Alignment.centerLeft,
//           margin: EdgeInsets.only(left: 16, right: 16, top: marginTop),
//           child: Text(
//             title,
//             style: TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: -0.005),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(left: 16, right: 16, top: 4),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 '*',
//                 style: TextStyle(
//                   fontSize: 11,
//                   fontWeight: FontWeight.w500,
//                   height: 1.2,
//                   color: greyDisabled,
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               Flexible(
//                   child: Text(
//                 comment,
//                 style: TextStyle(
//                   fontSize: 11,
//                   fontWeight: FontWeight.w500,
//                   height: 1.2,
//                   color: greyDisabled,
//                 ),
//               ))
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }