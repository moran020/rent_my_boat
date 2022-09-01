import 'package:flutter/material.dart';
import '/data/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchField(),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [CheckBox(), FiltersButton()],
        ),
        const SizedBox(height: 32),
        Text(
          tr.choose_boat,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: titleText,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.41,
          ),
        ),
        const SizedBox(height: 16),
        const BoatsList(),
      ],
    );
  }
}

// поисковое поле для города
class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return TextFormField(
      keyboardType: TextInputType.text,
      // controller: controller,
      cursorColor: activeButton,

      decoration: InputDecoration(
        prefixIcon: Image.asset(
          'assets/icons/anchor_search.png',
        ),
        hintText: tr.departure,
        hintStyle: TextStyle(
          fontSize: 15,
          color: hintTextColor,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.0024,
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: hintTextColor,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(width: 2.5, color: activeButton),
        ),
        isDense: true,
      ),
    );
  }
}

// чекбоксы с/без капитана
class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  late bool value;
  bool _withCap = false;
  bool _withoutCap = false;

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;

    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              // //SizedBox for get checkbox minimum padding around
              height: 19.0,
              width: 19.0,
              child: Checkbox(
                value: _withCap,
                onChanged: (bool? value) => setState(() => _withCap = value!),
                side: BorderSide(color: activeButton),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                activeColor: activeButton,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              tr.withCaptain,
              style: const TextStyle(fontSize: 14, letterSpacing: 0.24),
            ),
          ],
        ),
        const SizedBox(width: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              // //SizedBox for get checkbox minimum padding around
              height: 19.0,
              width: 19.0,
              child: Checkbox(
                value: _withoutCap,
                onChanged: (bool? value) =>
                    setState(() => _withoutCap = value!),
                side: BorderSide(color: activeButton),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                activeColor: activeButton,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              tr.withoutCaptain,
              style: const TextStyle(fontSize: 14, letterSpacing: 0.24),
            ),
          ],
        ),
      ],
    );
  }
}

// кнопка с остальными фильтрами
class FiltersButton extends StatelessWidget {
  const FiltersButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 39,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: activeButton,
              width: 1,
            ),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/filters',
          );
        },
        child: Image.asset(
          'assets/icons/filters.png',
          height: 14,
          width: 29,
        ),
      ),
    );
  }
}

// прокручивающийся список фильтров с видами лодок
class BoatsList extends StatefulWidget {
  const BoatsList({Key? key}) : super(key: key);

  @override
  State<BoatsList> createState() => _BoatsListState();
}

class _BoatsListState extends State<BoatsList> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    List<String> boatName = <String>[
      tr.catamaran,
      tr.sailboats,
      tr.houseboat,
      tr.rib,
      tr.yacht
    ];

    List<String> boatImage = <String>[
      'assets/images/catamaran.png',
      'assets/images/sailboats.png',
      'assets/images/houseboat.png',
      'assets/images/rib.png',
      'assets/images/yacht.png'
    ];

    return SizedBox(
        height: 96,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: boatName.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 7),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: SizedBox(
                        height: 75,
                        width: 110,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                alignment: FractionalOffset.topCenter,
                                image: AssetImage(
                                  boatImage[index],
                                ),
                              )),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          // TODO: обновление списка при выборе вида судна
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    boatName[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        letterSpacing: -0.5),
                  ),
                ],
              );
            }));
  }
}
