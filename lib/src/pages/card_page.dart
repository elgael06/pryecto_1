import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: <Widget>[
            ..._cardTipo1(),
            _cardTipo2(
                "https://img1.ak.crunchyroll.com/i/spire2/54c15675670ba44c1f98c3e11ba0cddf1515030877_full.jpg"),
            _cardTipo2(
                'https://upload.wikimedia.org/wikipedia/en/9/9c/Gintama%27firstdvd.jpg'),
            _cardTipo2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTa8Ba5jkeLFUOSzahYTejm1-bImNX3zv0ysg&usqp=CAU'),
            _cardTipo2(
                'https://ramenparados.com/wp-content/uploads/2019/08/Gintama-77.jpg'),
            _cardTipo2(
                'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2016/12/gintama.jpg?itok=C2lIlnpk'),
            _cardTipo2(
                'https://i.pinimg.com/originals/af/65/bf/af65bff950bcbb49d1ab182e9fe2a193.jpg'),
            _cardTipo2(
                'https://lh3.googleusercontent.com/proxy/I49Pqf8KyPsSKPuD_4rXmJByuT-t3qdT5zvXsR5ACJifDH4-E2_kYzMaY1Ewq2wyS_uEuMGLGAuooV3F1h78_ijlheEI4XUy72ggw7c3yKzuc_ZIES5FpBw-FcpMVT88M-v1rxg'),
            _cardTipo2(
                'https://vignette.wikia.nocookie.net/gintama/images/a/aa/Poster1de1.jpg/revision/latest/scale-to-width-down/340?cb=20150129005839&path-prefix=es'),
          ]),
    );
  }

  List<Widget> _cardTipo1() {
    return [
      Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.image),
              title: Text('iconos'),
              subtitle:
                  Text('?sfmdlsn sa s dv sdc z vvszvf sd fa dvdsz vsdvasd v '),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(onPressed: () {}, child: Text('cancelar')),
                FlatButton(onPressed: () {}, child: Text('ok')),
              ],
            )
          ],
        ),
      )
    ];
  }

  Widget _cardTipo2(String url) {
    final card = Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage("images/jar-loading.gif"),
            image: NetworkImage(url),
            fadeInDuration: Duration(milliseconds: 800),
            height: 550,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Gin tama'),
          )
        ],
      ),
    );

    return SizedBox(
        height: 620,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 10))
              ]),
          child:
              ClipRRect(child: card, borderRadius: BorderRadius.circular(30)),
        ));
  }
}
