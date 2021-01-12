import 'package:aseith_app/src/widgets/tarjeta1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
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
