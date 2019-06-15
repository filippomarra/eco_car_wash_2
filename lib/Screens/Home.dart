import 'package:eco_car_wash_2/Utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // Impostazione App Schermo Intero
    Size size = MediaQuery.of(context).size; // Dimensioni Schermo
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            // Sfondo dell'App
            child: new Image.asset(img_background,
                width: size.width,
                height: size.height,
                fit: BoxFit.fill,
                color: Color.fromRGBO(255, 255, 200, 0.5),
                colorBlendMode: BlendMode.modulate),
          ),
          Container(
              // Logo dell'App
              constraints: BoxConstraints.expand(height: 300),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              alignment: Alignment.center,
              child: Image.asset(
                logo,
                fit: BoxFit.scaleDown,
              )),
          Stack(
            // Stack per i Floating Action Button
            children: <Widget>[
              // Chi Siamo
              new Align(
                alignment: new Alignment(0.0, 0.0),
                child: new FloatingActionButton(
                  heroTag: 'toChiSiamo',
                  onPressed: () {
                    Navigator.pushNamed(context, '/chisiamo');
                  },
                  child: Icon(Icons.local_car_wash),
                  backgroundColor: Colors.greenAccent,
                ),
              ),
              new Align(
                alignment: new Alignment(0.0, 0.13),
                child: new Text("Chi Siamo",
                    style: TextStyle(color: Colors.black.withOpacity(0.6))),
              ),
              // Gallery
              new Align(
                alignment: new Alignment(-0.6, 0.0),
                child: new FloatingActionButton(
                  heroTag: 'toGallery',
                  onPressed: () {
                    Navigator.pushNamed(context, '/gallery');
                  },
                  child: Icon(Icons.photo_library),
                  backgroundColor: Colors.greenAccent,
                ),
              ),
              new Align(
                alignment: new Alignment(-0.58, 0.13),
                child: new Text("Gallery",
                    style: TextStyle(color: Colors.black.withOpacity(0.6))),
              ),
              // Punti Vendita
              new Align(
                alignment: new Alignment(0.6, 0.0),
                child: new FloatingActionButton(
                  heroTag: 'toPunti',
                  onPressed: () {
                    Navigator.pushNamed(context, '/punti');
                  },
                  child: Icon(Icons.place),
                  backgroundColor: Colors.greenAccent,
                ),
              ),
              new Align(
                alignment: new Alignment(0.68, 0.13),
                child: new Text("Punti Vendita",
                    style: TextStyle(color: Colors.black.withOpacity(0.6))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
