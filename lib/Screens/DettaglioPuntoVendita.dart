import 'package:eco_car_wash_2/Utils/PuntoVendita.dart';
import 'package:eco_car_wash_2/Utils/globals.dart';
import 'package:flutter/material.dart';

class DettaglioPuntoVendita extends StatelessWidget {
  // Definisco un parametro per indicare il punto vendita
  final PuntoVendita punto;

  // Imposto il parametro punto come required nel costruttore
  DettaglioPuntoVendita({Key key, @required this.punto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Dimensioni schermo
    return Scaffold(
      appBar: AppBar(
        title: Text("Dettaglio Punto Vendita"),
        backgroundColor: Colors.greenAccent,
      ),
      // Mostro nome della città e indirizzo del punto vendita
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
          // Header della pagina di dettaglio
          Container(
            child: new Image.asset(
              img_dettaglio,
              fit: BoxFit.scaleDown,
            ),
          ),
          // Stack contenente il nome della città e l'indirizzo del punto vendita
          Stack(
            children: <Widget>[
              // Nome della città
              new Align(
                alignment: new Alignment(0.0, 0.1),
                child: new Text(
                  "Città: " + punto.city,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Indirizzo del punto vendita
              new Align(
                alignment: new Alignment(0.0, 0.3),
                child: new Text(
                  "Indirizzo: " + punto.address,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
