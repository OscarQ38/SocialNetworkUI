import 'package:aseith_app/src/pages/home.dart';
import 'package:aseith_app/src/providers/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_page.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: checkLoginState(context),
        builder: ( context,snapshot ) {
          return Center(
            child: Text('Espere...'),
          );
        },
      ),
    );
  }

  Future checkLoginState( BuildContext context ) async {
    final authService = Provider.of<AuthService>(context, listen: false);
    final autenticado = await authService.isLoggedIn();

    if ( autenticado ) {
      Navigator.pushReplacement(
        context, 
        PageRouteBuilder(
          pageBuilder: (_, __, ____ ) => HomePage(),
          transitionDuration: Duration(microseconds: 0)
        )
      );
    } else {
      Navigator.pushReplacement(
        context, 
        PageRouteBuilder(
          pageBuilder: (_, __, ____ ) => LoginPage(),
          transitionDuration: Duration(microseconds: 0)
        )
      );
    }
  }
}
