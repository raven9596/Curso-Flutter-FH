import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0), 
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),]
        ,
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text('klk carlos'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Ok'),
            ),
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {
  final card = Container(
    // clipBehavior: Clip.antiAlias,

    child: Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://www.slrlounge.com/wp-content/uploads/2020/06/best-landscape-photographers-to-follow-in-2020.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        // Image(
        //   image: NetworkImage('https://www.slrlounge.com/wp-content/uploads/2020/06/best-landscape-photographers-to-follow-in-2020.jpg')),

        Container(
            padding: EdgeInsets.all(10.0), child: Text('Que belleza'))
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
        )
      ]
    ),
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}
