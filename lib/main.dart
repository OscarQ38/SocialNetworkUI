import 'package:aseith_app/src/pages/home.dart';
import 'package:aseith_app/src/pages/perfil.dart';
import 'package:aseith_app/src/pages/tarjeta_detalle.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App ITH',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'detalle': (BuildContext context) => TarjetaDetalle(),
        'perfil': (BuildContext context) => Perfil(),
      },
    );
  }
}
