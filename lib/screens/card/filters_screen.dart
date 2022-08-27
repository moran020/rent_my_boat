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
    return SafeArea(
      child: Scaffold(
        floatingActionButton: ApplyFiltersButton(),
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
                  'Удалить',
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
          margin: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 80),
          child: TextFields(),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 40,
      child: ElevatedButton(
          child: Text(
            "Применить фильтры",
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
              TextFieldCreate(
                hintText: '12',
                title: 'Вместимость',
              ),
              const SizedBox(width: 8),
              TextFieldCreate(
                hintText: '4',
                title: tr.cabinsHint,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          child: Row(
            children: [
              TextFieldCreate(
                hintText: '8',
                title: tr.sleepingPlacesHint,
              ),
              const SizedBox(width: 8),
              TextFieldCreate(
                hintText: '13.99 метров',
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

class TextFieldCreate extends StatefulWidget {
  const TextFieldCreate({Key? key, required this.title, required this.hintText})
      : super(key: key);
  final String title;
  final String hintText;

  @override
  State<TextFieldCreate> createState() => _TextFieldCreateState();
}

class _TextFieldCreateState extends State<TextFieldCreate> {
  FocusNode myFocusNode = FocusNode();

//   myFocusNode.addListener( () {
//    setState((){});
// }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.005),
          ),
          SizedBox(
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
