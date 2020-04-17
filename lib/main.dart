import 'package:flutter/material.dart';
import './home.dart';
import './profil.dart';

void main() {
  runApp(LatTabs());
}

class LatTabs extends StatefulWidget {
  @override
  LatTabState createState() => LatTabState();
}

class LatTabState extends State<LatTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2); //LENGTH = TOTAL TAB YANG AKAN DIBUAT
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('UTY HEBAT'),
            backgroundColor: Colors.red[800],
            bottom: TabBar(
                controller: controller,
                tabs: <Tab>[
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.account_circle),),
                ]
            ),
          ),
          body: TabBarView(
              controller: controller,
              children: <Widget>[
                Home(),
                Profil(),
              ]
          ),
          //END CODE
        )
    );
  }
}