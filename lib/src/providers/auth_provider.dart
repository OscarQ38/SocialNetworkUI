import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class registerProvider {
  // Getting value from TextField widget.

  Future register(String email, String password, String nombreCompleto,
      int noControl) async {
    final url = "https://aseith-api.herokuapp.com/api/auth/new";

    // Getting value from Controller

    final data = {
      "email": email,
      "password": password,
      "nombreCompleto": nombreCompleto,
      "noControl": noControl
    };

    final resp = await http.post(url,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    final decodedData = resp.body;

    print(decodedData);
    print(json.encode(data));
  }
}
// "img": "imagen",
//     "nombreCompleto": "Gerardo Mayboca Enriquez",
//     "nombre": "Gerardo",
//     "apellidoPaterno": "Mayboca",
//     "apellidoMaterno": "Enriquez",
//     "email": "gmayboca@gmail.com",
//     "password": "gmayboca123",
//     "noControl": 18330463,
//     "resumen": "Soy un ing. en sistemas computacionales genio del fortnite",
//     "twitter": "@ElMayboca"
// print(login(usuario));
