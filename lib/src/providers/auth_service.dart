import 'package:aseith_app/src/models/responses/login_response.dart';
import 'package:aseith_app/src/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final apiUrl = "https://aseith-api.herokuapp.com/api";

class AuthService extends ChangeNotifier {
  bool _autenticando = false;
  Usuario usuario;

  final _storage = new FlutterSecureStorage();

  bool get autenticando => this._autenticando;
  set autenticando(bool valor) {
    this._autenticando = valor;
    notifyListeners();
  }

  static Future<String> getToken() async {
    final _storage = FlutterSecureStorage();
    final token = await _storage.read(key: 'token');
    return token;
  }

  static Future<void> deleteToken() async {
    final _storage = FlutterSecureStorage();
    await _storage.delete(key: 'token');
  }

  Future<bool> login(String email, String password) async {
    final data = {"email": email, "password": password};

    var url = Uri.parse(apiUrl + '/auth/');

    final resp = await http.post(url,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      this.usuario =
          new Usuario(uid: loginResponse.uid, nombre: loginResponse.nombre);

      await _guardarToken(loginResponse.token);

      return true;
    } else {
      return false;
    }
  }

  Future<bool> register(Usuario usuario) async {

    var url = Uri.parse(apiUrl + '/auth/new');

    final resp = await http.post(url,
        body: usuarioToJson(usuario),
        headers: {'Content-Type': 'application/json'});
    if (resp.statusCode == 201) {
      final loginResponse = loginResponseFromJson(resp.body);
      this.usuario =
          new Usuario(uid: loginResponse.uid, nombre: loginResponse.nombre);

      await _guardarToken(loginResponse.token);

      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateUser(Usuario usuario) async {
    final token = await this._storage.read(key: 'token');

    var url = Uri.https(apiUrl, '/auth/update');

    final resp = await http.put(url,
        body: usuario.toJson(),
        headers: {'Content-Type': 'application/json', 'x-token': token});

    if (resp.statusCode == 200) {
      //Todo: Guardar nuevo usuario en la variable global
      return true;
    } else {
      return false;
    }
  }

  Future<bool> isLoggedIn() async {
    final token = await this._storage.read(key: 'token');
  
    var url = Uri.parse(apiUrl + '/renew');

    final resp = await http.post( url,
      headers: {
        'Content-Type': 'application/json',
        'x-token': token
      }
    );
    
    if( resp.statusCode == 200 ) {
      final loginResponse = loginResponseFromJson( resp.body );
      this.usuario = new Usuario (uid: loginResponse.uid);

      await this._guardarToken(loginResponse.token);
      
      return true;
    } else {
      this.logout();
      return false;
    }
  }

  Future _guardarToken(String token) async {
    return await _storage.write(key: 'token', value: token);
  }

  Future logout() async {
    await _storage.delete(key: 'token');
  }
}

// print(login(usuario));
