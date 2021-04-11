import 'package:aseith_app/src/pages/loading_page.dart';
import 'package:aseith_app/src/providers/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:aseith_app/src/pages/home.dart';
import 'package:aseith_app/src/pages/login_page.dart';
import 'package:aseith_app/src/pages/perfil.dart';
import 'package:aseith_app/src/pages/tarjeta_detalle.dart';
import 'package:aseith_app/src/pages/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthService())],
      child: MaterialApp(
        title: 'App ITH',
        debugShowCheckedModeBanner: false,
        initialRoute: 'loading',
        routes: {
          '/': (BuildContext context) => HomePage(),
          'detalle': (BuildContext context) => TarjetaDetalle(),
          'perfil': (BuildContext context) => Perfil(),
          'loading': (BuildContext context) => LoadingPage(),
          'login': (BuildContext context) => LoginPage(),
          'register': (BuildContext context) => RegisterPage(),
        },
      ),
    );
  }
}
