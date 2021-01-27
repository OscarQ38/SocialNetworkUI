import 'package:aseith_app/src/widgets/tarjeta1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.green[100],
        elevation: 0.0,
      ),
      drawer: _menuLateral(),
      body: _paginas(),
    );
  }
}

class _paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      children: [
        Scaffold(
          body: ListView(
            children: [
              cardTipo1(),
              SizedBox(height: 15),
              cardTipo2(),
            ],
          ),
        ),
        Container(
          color: Colors.green[100],
        )
      ],
    );
  }
}

class _menuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.network(
                  'https://scontent.fhmo1-1.fna.fbcdn.net/v/t31.0-8/1025379_10202155040903663_1940833829751738118_o.jpg?_nc_cat=101&ccb=2&_nc_sid=174925&_nc_eui2=AeFszBLnYoGvfqYJjTLZjEb_pAwF8_t2n8mkDAXz-3afyUoSiWzzkFl7lFtCacYFEp8j6gM-_vU3LslTkNl84eFj&_nc_ohc=c0nxARLkJ4gAX9WLo8x&_nc_ht=scontent.fhmo1-1.fna&oh=b519bb413dc4d951dbd01e63f8c81cba&oe=6027DF34',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Carlos Arce',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '18330463',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'perfil');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 10),
                        Text(
                          'Perfil',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.bookmark),
                      SizedBox(width: 10),
                      Text(
                        'Favoritos',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.check_box),
                      SizedBox(width: 10),
                      Text(
                        'Encuestas',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text(
                        'Cerrar sesion',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
