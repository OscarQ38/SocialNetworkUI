import 'package:flutter/material.dart';

class cardTipo1 extends StatelessWidget {
  const cardTipo1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instituto Tecnologico de Hermosillo',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '10 de enero de 2021',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0, bottom: 30),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.orange[300],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/img/noticia.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'detalle');
            },
            child: ListTile(
              title: Text(
                'Soy el mero titulo',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                  'Este es un jemplo de lo que del texto de la tarjeta para poder ver como se ve con los ojos abiertos'),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cardTipo2() {
  return Card(
    margin: EdgeInsets.all(15.0),
    elevation: 5.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Carlos Arce',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '10 de enero de 2021',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0, bottom: 30),
              child: Icon(
                Icons.bookmark,
                color: Colors.orange[300],
              ),
            ),
          ],
        ),
        ListTile(
          title: Text(
            'Soy el mero titulo',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              'Este es un jemplo de lo que del texto de la tarjeta para poder ver como se ve con los ojos abiertos'),
        ),
      ],
    ),
  );
}
