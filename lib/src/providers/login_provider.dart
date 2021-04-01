import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class authProvider {
  // Getting value from TextField widget.

  Future login(String email, String password) async {
    final url = "https://aseith-api.herokuapp.com/api/auth/";

    // Getting value from Controller

    final data = {"email": email, "password": password};

    final resp = await http.post(url,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    final decodedData = resp.body;

    print(decodedData);
    print(json.encode(data));
  }
}

// print(login(usuario));
