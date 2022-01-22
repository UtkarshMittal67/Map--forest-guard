import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocation/geolocation.dart';
import 'package:latlong/latlong.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:map_isef/GRID.dart';
import 'package:map_isef/node.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new MainAppPage(),
    );
  }
}

class MainAppPage extends StatefulWidget{
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MainAppPage> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Forest Guard Monitor",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.red[500],
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 25),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.orange,
        currentIndex: _currentindex,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.location_on),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            title: Text("Node Monitoring"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.track_changes),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctxt) => Nav()));
              },
            ),
            title: Text("Grid pattern"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon:IconButton(
              icon: Icon(Icons.call_split),
              color: Colors.white,
              onPressed: (){

              },
            ),
            title: Text("Fire track"),
            backgroundColor: Colors.blue,
          ),

        ],
        onTap: (index)
        {setState(()
        {
          _currentindex = index;
        },
        );
        },
      ),
    );
  }
  }
