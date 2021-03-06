import 'package:flutter/material.dart';
import 'package:practica1/src/screens/intenciones_screen.dart';
import 'package:practica1/src/screens/opcion1_screen.dart';
import 'package:practica1/src/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/opc1': (BuildContext context) => Opcion1Screen(),
        '/intenciones': (BuildContext context) => IntencionesScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
