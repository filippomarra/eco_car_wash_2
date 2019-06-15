import 'package:eco_car_wash_2/Utils/globals.dart';
import 'package:flutter/material.dart';

class ChiSiamo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Dimensioni schermo
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Chi Siamo'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Stack(children: <Widget>[
          Center(
            // Sfondo dell'App
            child: new Image.asset(img_background,
                width: size.width,
                height: size.height,
                fit: BoxFit.fill,
                color: Color.fromRGBO(255, 255, 200, 0.5),
                colorBlendMode: BlendMode.modulate),
          ),
          ListView(
            children: <Widget>[
              // Container per l'header della pagina
              Container(
                  child: Image.asset(
                img_chisiamo,
                fit: BoxFit.scaleDown,
              )),
              // Container per il titolo "I Nostri Servizi"
              Container(
                margin: const EdgeInsets.all(15.0),
                child: Text(
                  "I Nostri Servizi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Container per il corpo di "I Nostri Servizi"
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  servizi,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Container per l'header di "Lavaggio a Vapore"
              Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                  child: Image.asset(
                    img_vapore,
                    fit: BoxFit.scaleDown,
                  )),
              // Container per il titolo "Lavaggio a Vapore"
              Container(
                margin: const EdgeInsets.all(15.0),
                child: Text(
                  "Lavaggio a Vapore",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Container per il corpo di "Lavaggio a Vapore"
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  vapore,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Container per l'header di "Contattaci"
              Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                  child: Image.asset(
                    img_contattaci,
                    fit: BoxFit.scaleDown,
                  )),
              // Container per il titolo "Contattaci"
              Container(
                margin: const EdgeInsets.all(15.0),
                child: Text(
                  "Contattaci",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Container per il corpo di "Contattaci"
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  contattaci,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ]));
  }
}
