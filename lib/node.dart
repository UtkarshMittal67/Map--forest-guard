import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocation/geolocation.dart';
import 'package:latlong/latlong.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:map_isef/GRID.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  List<Widget> _widgetOptions = <Widget>[
    Nav()

  ];
  int _selectedIndex = 0;
  void _onItemTap(int index){
    setState((){
      _selectedIndex = index;

    });
  }



  var points = <LatLng>[
    new LatLng(37.236,-119.387),
    new LatLng(37.230,-119.383),
    new LatLng(37.240,-119.390),
    new LatLng(37.243,-119.393),
    new LatLng(37.248,-119.395),
    new LatLng(38.110,-119.420),
    new LatLng(38.225,-119.650),
    new LatLng(38.229,-119.700),
    new LatLng(39.234,-120.110),
    new LatLng(39.110,-121.111),

  ];

  MapController controller = new MapController();
  int _currentindex = 0;


  buildMap(){

  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body:

      new FlutterMap(
          options: new MapOptions(
              center: new LatLng(37.230,-119.381), minZoom: 13.47),
          layers: [
            new TileLayerOptions(
                urlTemplate:
                "https://api.mapbox.com/styles/v1/rudransh/ckmqmlrkx18yh17s2yyqjx6wy/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicnVkcmFuc2giLCJhIjoiY2ttcW1kaXdwMnE2aDJ3cXVzMXQ1bXF0bSJ9.Nx70fTh4IVZNh67CqQc9Hw",
            ),
            new MarkerLayerOptions(
              markers:[
                new Marker(
                  width: 45.0,
                  height: 45.0,
                  point: new LatLng(37.228,-119.392),
                  builder:(context)=> new Container(

                  ),


                ),


                new Marker(
                  width: 45.0,
                  height: 45.0,
                  point: new LatLng(37.230,-119.389),
                  builder:(context)=> new Container(

                  ),

                ),
                new Marker(
                  width: 45.0,
                  height: 45.0,
                  point: new LatLng(37.240,-119.403),
                  builder:(context)=> new Container(

                  ),

                ),
                new Marker(
                  width: 45.0,
                  height:45.0,
                  point: new LatLng(37.232,-119.393),
                  builder: (context)=> new Container(

                ),
                ),
                new Marker(
                  width:45.0,
                  height:45.0,
                  point:new LatLng(37.258,-119.371),
                  builder: (context)=> new Container(

                  ),
                ),
                new Marker(
                  width:45.0,
                  height:45.0,
                  point:new LatLng(37.237,-119.388),
                  builder: (context)=> new Container(

                    ),
                  ),
                new Marker(
                  width:45.0,
                  height:45.0,
                  point:new LatLng(37.238,-119.395),
                  builder: (context)=> new Container(

                  ),
                ),
                new Marker(
                  width:45.0,
                  height:45.0,
                  point: new LatLng(37.223,-119.403),
                  builder: (context)=> new Container(

                  ),
                ),
                new Marker(
                  width: 45.0,
                  height: 45.0,
                  point: new LatLng(37.227,-119.386),
                  builder: (context)=> new Container(

                  ),
                ),
                new Marker(
                  width: 45.0,
                  height: 45.0,
                  point: new LatLng(37.230,-119.378),
                  builder: (context)=> new Container(

                  ),
                ),

              ],
            ),
                  ],
                 ),

    );
  }
  }

