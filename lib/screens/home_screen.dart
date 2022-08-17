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
      appBar: AppBar(backgroundColor: background,
          shadowColor: Colors.transparent,
          elevation: 0.0,
        actions: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: DropdownButton<Language>(
            underline: Container(), // empty Container removes grey underline!
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
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Image.asset('assets/icons/vector.png', width: 32,),
              const SizedBox( height: 16,),
              SizedBox( 
                height:45, 
                width:double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isPressed_1? pressedButton : activeButton ,
                    elevation: 0.0,
                    shadowColor: Colors.transparent, 
                    shape: RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed( context,'/owner_form',);
                    setState(() {
                      isPressed_1 = true;
                      isPressed_2 = false;
                    });
                    
                  }, 
                  child:  Text(tr.capitan, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.5, ),)) ),
              const SizedBox( height: 8,),
              SizedBox( 
                height:45, 
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isPressed_2? pressedButton : activeButton ,
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(100)
                    ), 
                  ),
                  onPressed: (){
                    Navigator.pushNamed( context,'/owner_form',);
                    setState(() {
                      isPressed_2 = true;
                      isPressed_1 = false;
                    });
                  }, 
                  child:  Text(tr.tourist, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.5, ),)) ),
            ],
          ),
        ),
      ),
    );
  }
}
