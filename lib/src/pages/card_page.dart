import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
      child: Column(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.photo_filter, color: Colors.blue),
        title: Text(
            'Titulisimo tu mero patron asies quieras o no, under my conditions'),
        subtitle: Text(
            'Nombre el mero mero matatero de esta siti, el señor Dim Dom dueño del Dima Dom del Dima Daun, magnate, hombre de negocios, dueño de media ciudad peluche'),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Ok'),
            onPressed: () {},
          )
        ],
      )
    ],
  ));
}

Widget _cardTipo2() {
  return Card(
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage('https://wallpapercave.com/wp/wp5924562.jpg'),
          placeholder: AssetImage('images/cat.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        //Image(image: NetworkImage('https://wallpapercave.com/wp/wp5924562.jpg'))

        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('No tengo dinero ni nada que dar,'),
        )
      ],
    ),
  );
}
