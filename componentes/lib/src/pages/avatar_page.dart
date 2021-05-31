import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Pages'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.geekmi.news/__export/1605198940916/sites/debate/img/2020/11/12/stan_leex_su_legado_a_dos_axos_de_su_muerte.jpg_242310155.jpg'),
          placeholder: AssetImage('assets/fluid-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
  
    );
  }
}