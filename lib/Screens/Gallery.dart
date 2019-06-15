import 'package:eco_car_wash_2/Utils/globals.dart';
import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Dimensioni schermo
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Gallery'),
          backgroundColor: Colors.greenAccent,
        ),
        // Creo una griglia contenente le immagini della gallery
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
            new GridView.extent(
              // Imposto dei vincoli di spaziatura e di disposizione delle immagini
              maxCrossAxisExtent: 150.0,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              padding: const EdgeInsets.all(5.0),
              children: _buildGallery(12), // Genero una gallery con 12 immagini
            ),
          ],
        ));
  }
}

// Funzione per costruire la gallery
List<Widget> _buildGallery(numberOfImages) {
  List<Container> containers =
      new List<Container>.generate(numberOfImages, (int index) {
    // Tramite index scorro le varie immagini presenti nella directory apposita
    final path = img_path;
    final imageName = '$path/image${index + 1}.jpg';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    );
  });
  return containers;
}
