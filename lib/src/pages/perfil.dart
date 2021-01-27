import 'package:aseith_app/src/widgets/tarjeta1.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
      ),
      body: ListView(
        children: [
          _perfilPrincipal(),
          SizedBox(height: 30),
          _descripcionPerfil(),
          SizedBox(height: 20),
          _redesSociales(),
          SizedBox(height: 15),
          cardTipo2(),
        ],
      ),
    );
  }
}

Widget _perfilPrincipal() {
  return Container(
    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
        padding: EdgeInsets.only(top: 20, left: 40, right: 40),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.network(
                  'https://scontent.fhmo1-1.fna.fbcdn.net/v/t31.0-8/1025379_10202155040903663_1940833829751738118_o.jpg?_nc_cat=101&ccb=2&_nc_sid=174925&_nc_eui2=AeFszBLnYoGvfqYJjTLZjEb_pAwF8_t2n8mkDAXz-3afyUoSiWzzkFl7lFtCacYFEp8j6gM-_vU3LslTkNl84eFj&_nc_ohc=c0nxARLkJ4gAX9WLo8x&_nc_ht=scontent.fhmo1-1.fna&oh=b519bb413dc4d951dbd01e63f8c81cba&oe=6027DF34',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Carlos Arce',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Ing. Informatica',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    ]),
  );
}

Widget _descripcionPerfil() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            color: Colors.transparent,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum quam ultrices fames nunc consequat tincidunt justo. Varius a netus massa sit massa scelerisque urna, quam egestas. Velit pretium viverra sollicitudin nisl, massa dignissim sed laoreet justo. Lobortis facilisis quis dignissim lacus, non volutpat dictum consequat.',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _redesSociales() {
  return Container(
    child: Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Redes Sociales ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.circle_notifications),
                SizedBox(width: 10),
                Text('Carloslll',
                    style: TextStyle(fontSize: 12, color: Colors.blue))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.circle_notifications),
                SizedBox(width: 10),
                Text('Carloslll',
                    style: TextStyle(fontSize: 12, color: Colors.blue))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.circle_notifications),
                SizedBox(width: 10),
                Text(
                  'Carloslll',
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
