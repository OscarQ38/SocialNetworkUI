import 'package:flutter/material.dart';

Widget iconosNombres() {
  return Row(
    children: [
      Icon(Icons.person),
      SizedBox(width: 10),
      Text(
        'Perfil',
        style: TextStyle(fontSize: 14),
      ),
    ],
  );
}
