import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocation/geolocation.dart';
import 'package:latlong/latlong.dart';
import 'package:firebase_database/firebase_database.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => new _NavState();
}

class _NavState extends State<Nav> {


  @override
  Widget build(BuildContext ctxt) {
    var points = <LatLng>[
      new LatLng(37.230, -119.381),
      new LatLng(37.228, -119.392),
      new LatLng(37.230, -119.389),
      new LatLng(37.240, -119.403),
      new LatLng(37.240, -119.403),
      new LatLng(37.232, -119.393),
      new LatLng(37.258, -119.371),
      new LatLng(37.237, -119.388),
      new LatLng(37.238, -119.395),
      new LatLng(37.223, -119.403),

    ];
    return new Scaffold(
      body: new FlutterMap(
        options: new MapOptions(
            center: new LatLng(37.230, -119.381), minZoom: 13.47),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/rudransh/ckmqmlrkx18yh17s2yyqjx6wy/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicnVkcmFuc2giLCJhIjoiY2ttcW1kaXdwMnE2aDJ3cXVzMXQ1bXF0bSJ9.Nx70fTh4IVZNh67CqQc9Hw",
          ),
          new MarkerLayerOptions(
            markers: [
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.228, -119.392),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,),
                ),
              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.230, -119.389),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),

              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.240, -119.403),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),

              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.232, -119.393),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),
              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.258, -119.371),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),
              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.237, -119.388),
                builder: (context) =>
                new Container(
                  child: IconButton(

                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),
              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.238, -119.395),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),
              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.223, -119.403),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),
              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.227, -119.386),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),
              ),
              new Marker(
                width: 45.0,
                height: 45.0,
                point: new LatLng(37.230, -119.378),
                builder: (context) =>
                new Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on,
                        color: Colors.red),
                    iconSize: 45.0,
                  ),
                ),
              ),

            ],
          ),
          new PolylineLayerOptions(
            polylines: [
              new Polyline(
                points: points,
                strokeWidth: 5.0,
                color: Colors.yellow,


              ),
            ],
          ),
        ],

      ),
    );
  }
}

