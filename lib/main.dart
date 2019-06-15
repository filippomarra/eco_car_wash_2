import 'package:eco_car_wash_2/Screens/ChiSiamo.dart';
import 'package:eco_car_wash_2/Screens/Gallery.dart';
import 'package:eco_car_wash_2/Screens/Home.dart';
import 'package:eco_car_wash_2/Screens/PuntiVendita.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Eco Car Wash 2';

  @override
  Widget build(BuildContext context) {
    // Fisso l'orientamento dell'app in modalità Portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      // Definisco i routes con lo stile Cupertino
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (context) => Home(), settings: settings);
          case '/chisiamo':
            return CupertinoPageRoute(
                builder: (context) => ChiSiamo(), settings: settings);
          case '/punti':
            return CupertinoPageRoute(
                builder: (context) => PuntiVendita(), settings: settings);
          case '/gallery':
            return CupertinoPageRoute(
                builder: (context) => Gallery(), settings: settings);
        }
      },
    );
  }
}
