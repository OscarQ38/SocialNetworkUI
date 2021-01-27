import 'package:flutter/material.dart';

class TarjetaDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _crearAppbar(),
          _crearPerfil(),
          _crearDesarrollo(),
        ],
      ),
    );
  }
}

Widget _crearAppbar() {
  return AppBar(
    elevation: 2.0,
    backgroundColor: Colors.white,
    flexibleSpace: Image(
      image: AssetImage('assets/img/noticia.jpg'),
      fit: BoxFit.cover,
    ),
  );
}

Widget _crearPerfil() {
  return Container(
    padding: EdgeInsets.only(top: 30, left: 30, bottom: 20, right: 15),
    child: Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '10 noticias que cambiaron al mundo',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Autor: ',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                'Instituto Tecnologico de Hermosillo',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Text(
            '25 de enero del 2020',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    ),
  );
}

Widget _crearDesarrollo() {
  return Container(
    padding: EdgeInsets.only(top: 10, left: 30, bottom: 30, right: 15),
    child: Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum quam ultrices fames nunc consequat tincidunt justo. Varius a netus massa sit massa scelerisque urna, quam egestas. Velit pretium viverra sollicitudin nisl, massa dignissim sed laoreet justo. Lobortis facilisis quis dignissim lacus, non volutpat dictum consequat. Quis in eleifend facilisis dignissim. Feugiat iaculis est, aliquam risus leo auctor cursus ac. Molestie blandit scelerisque in bibendum. Et lectus praesent ultricies posuere. Nunc bibendum id cras nec arcu commodo aliquet viverra risus.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Enlace:',
            style: TextStyle(fontSize: 12),
          ),
          InkWell(
            child: Text(
              "https://huaweicollegeonline.com/inicio",
              style: TextStyle(fontSize: 12, color: Colors.blue),
            ),
          )
        ],
      ),
    ),
  );
}
