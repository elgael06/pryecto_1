import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 19,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTh-v_QtLzzQxiFEFEwGa0L6BOOo5f-ytIvPQ&usqp=CAU'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text('CV'),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            fadeInDuration: Duration(milliseconds: 1500),
            placeholder: AssetImage('images/jar-loading.gif'),
            image: NetworkImage(
                'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2016/09/gintama_0.jpg?itok=At5xogvC')),
      ),
    );
  }
}
