import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
            children: <Widget> [
              Row(
                  children: <Widget>[
                    Icon(Icons.school),
                    Text(' Profil Mahasiswa', style: new TextStyle(fontWeight: FontWeight.bold))
                  ]
              ),
              Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('images/profil.jpg'),
                      Text('Nama  : Widiya Sulastri'),
                      Text('NIM   : 5170411038'),
                      Text('Kelas : A'),
                    ]
                ),
              ),
            ]
        )
    );
  }
}