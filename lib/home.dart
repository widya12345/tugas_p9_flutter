import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
            children: <Widget> [
              Row(
                  children: <Widget>[
                    Icon(Icons.school),
                    Text(' Profil UTY', style: new TextStyle(fontWeight: FontWeight.bold))
                  ]
              ),
              Card(
                child: Column(
                    children: <Widget>[
                      Image.network('https://www.gudeg.net/cni-content/uploads/modules/direktori/logo/20171101110615.png'),
                      Text('Universitas Teknologi Yogyakarta atau biasa disingkat UTY adalah salah satu perguruan tinggi swasta terbaik yang berbentuk universitas di Provinsi Daerah Istimewa Yogyakarta',textAlign: TextAlign.justify)
                    ]
                ),
              ),
            ]
        )
    );
  }
}