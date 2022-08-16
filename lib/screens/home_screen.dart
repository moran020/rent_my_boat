import 'package:flutter/material.dart';
import 'package:rent_my_boat/main.dart';
import '../data/colors.dart';
import '../data/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isPressed_1 = false;
  late bool isPressed_2 = false;

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(backgroundColor: background, actions: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: DropdownButton<Language>(
            icon: Icon(
              Icons.language,
              color: activeButton,
            ),
            onChanged: (Language? language) async {
              if (language != null) {
                Locale _locale = await setLocale(language.languageCode);
                MyApp.setLocale(context, _locale);
              }
            },
            items: Language.languageList()
                .map((e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Text(e.name),
                    ))
                .toList(),
          ),
        ),
      ]),
      body: Container(
        color: background,
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/vector.png',
                width: 100,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                  height: 75,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: isPressed_1 ? pressedButton : activeButton,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/owner_form',
                        );
                        setState(() {
                          isPressed_1 = true;
                          isPressed_2 = false;
                        });
                      },
                      child: Text(tr.capitan))),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 75,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: isPressed_2 ? pressedButton : activeButton,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/card_screen',
                        );
                        setState(() {
                          isPressed_2 = true;
                          isPressed_1 = false;
                        });
                      },
                      child: Text(tr.tourist))),
            ],
          ),
        ),
      ),
    );
  }
}
