import 'package:flutter/material.dart';
import 'package:aseith_app/src/providers/auth_provider.dart';

class RegisterPage extends StatelessWidget {
  final nombreCompletoController = TextEditingController();
  final numControlController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _crearFondo(context),
        _loginForm(context),
      ],
    ));
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 180,
          )),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 3.0),
                      spreadRadius: 2.0)
                ]),
            child: Column(
              children: [
                Text(
                  'Registro',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 30.0),
                _nombreCompleto(),
                SizedBox(height: 25.0),
                _crearEmail(),
                SizedBox(height: 25.0),
                _crearPass(),
                SizedBox(height: 25.0),
                _confirmarPass(),
                SizedBox(height: 25.0),
                _numeroControl(),
                SizedBox(height: 30.0),
                _crearBoton(),
              ],
            ),
          ),
          Text(
            'Ya tiene cuenta?',
            style: TextStyle(
                color: Color.fromRGBO(78, 108, 200, 1.0), fontSize: 16),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.only(right: 30.0, left: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        decoration: InputDecoration(
          icon: Icon(
            Icons.alternate_email,
            color: Colors.blue,
          ),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo electronico',
        ),
      ),
    );
  }

  Widget _crearPass() {
    return Container(
      padding: EdgeInsets.only(right: 30.0, left: 20.0),
      child: TextField(
        obscureText: true,
        controller: passwordController,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock_outlined,
            color: Colors.blue,
          ),
          labelText: 'Contraseña',
        ),
      ),
    );
  }

  Widget _confirmarPass() {
    return Container(
      padding: EdgeInsets.only(right: 30.0, left: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock_outlined,
            color: Colors.blue,
          ),
          labelText: 'Confirmar contraseña',
        ),
      ),
    );
  }

  Widget _nombreCompleto() {
    return Container(
      padding: EdgeInsets.only(right: 30.0, left: 20.0),
      child: TextField(
        controller: nombreCompletoController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          hintText: 'Nombre completo',
          labelText: 'Nombre completo',
        ),
      ),
    );
  }

  Widget _numeroControl() {
    return Container(
      padding: EdgeInsets.only(right: 30.0, left: 20.0),
      child: TextField(
        controller: numControlController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(
            Icons.vpn_key,
            color: Colors.blue,
          ),
          hintText: 'Numero de control',
          labelText: 'Numero de control',
        ),
      ),
    );
  }

  Widget _crearBoton() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
        child: Text('Registrarse'),
      ),
      color: Color.fromRGBO(78, 108, 200, 1.0),
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () {
        String nombreCompleto = nombreCompletoController.text;
        String email = emailController.text;
        String password = passwordController.text;
        int noControl = numControlController.hashCode;
        // print(nombreCompleto + email + password);
        registerProvider().register(email, password, nombreCompleto, noControl);
      },
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final fondoModaro = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(78, 108, 200, 1.0),
        Color.fromRGBO(60, 85, 165, 1.0),
      ])),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color.fromRGBO(255, 255, 255, 0.10)),
    );

    return Stack(
      children: <Widget>[
        fondoModaro,
        Positioned(top: 95.0, left: 20.0, child: circulo),
        Positioned(top: -40.0, right: -30.0, child: circulo),
        Positioned(top: 220.0, left: 230.0, child: circulo),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              ClipOval(
                  child: Image.asset(
                'assets/img/logotnm.png',
                width: 100,
                height: 100,
              )),
              SizedBox(height: 10.0, width: double.infinity),
              Text('ITH', style: TextStyle(color: Colors.white, fontSize: 25.0))
            ],
          ),
        )
      ],
    );
  }
}
