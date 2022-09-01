import 'package:flutter/material.dart';
import '/data/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          leading: IconButton(
            icon: Image.asset(
              'assets/icons/cross.png',
              height: 11,
            ),
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
              SliderSection(
                  title: tr.price1per_person, comment: tr.message_price1),
              SliderSection(
                  title: tr.price2per_day, comment: tr.message_price2),
              SliderSection(
                  title: tr.price3per_week, comment: tr.message_price3),
              SliderSection(
                  title: tr.price4_skipper, comment: tr.message_price4),
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

// кнопка 'применить фильтры'
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
            style: const TextStyle(
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

// блок текстфилдов 'Вместимость', 'Кол-во кают', 'Спальные места', 'Длина в метрах/футах'
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
                title: tr.length,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

// конструктор текстфилда с числовой клавиатурой
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

// конструктор текстфилда с текстовой клавиатурой
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

// конструктор фильтров по цене с названием, ползунком, диапазоном и комментарием
class SliderSection extends StatefulWidget {
  const SliderSection({Key? key, required this.title, required this.comment})
      : super(key: key);

  final String title;
  final String comment;

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  // TODO: изменить значения в зависимости от списка
  double _startValue = 0.0;
  double _endValue = 100000.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 16, right: 16, top: 32),
          child: Text(
            widget.title,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.005),
          ),
        ),
        SliderTheme(
          // TODO: нарисовать ползунок в соответствии с макетом
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
            )),
        Container(
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
                widget.comment,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  color: greyDisabled,
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
