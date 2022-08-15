import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/owner_form.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Добавлен метод initializeDateFormatting, чтобы отображать календарь на разных языках
// Разрешение на инициализацию Firebase после вызова runApp
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  //Переменная _firebaseApp для инициализации во FutureBuilder в home
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent My Boat',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // успешное построение страницы относительно инициализации  Firebase
      // удалить debagPrint позже
      home: FutureBuilder(
          future: _firebaseApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              debugPrint('You have an error! ${snapshot.error.toString()}');
              return const Text('Something went wrong!');
            } else if (snapshot.hasData) {
              debugPrint('Firebase initialization is successful!');
              return const HomeScreen();
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/owner_form': (context) => const OwnerForm(),
      },
    );
  }
}
