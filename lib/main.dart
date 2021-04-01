import 'package:flutter/material.dart';

import 'package:aseith_app/src/pages/home.dart';
import 'package:aseith_app/src/pages/login_page.dart';
import 'package:aseith_app/src/pages/perfil.dart';
import 'package:aseith_app/src/pages/tarjeta_detalle.dart';
import 'package:aseith_app/src/pages/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App ITH',
      debugShowCheckedModeBanner: false,
      initialRoute: 'register',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'detalle': (BuildContext context) => TarjetaDetalle(),
        'perfil': (BuildContext context) => Perfil(),
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
    );
  }
}
