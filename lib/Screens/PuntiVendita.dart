import 'package:eco_car_wash_2/Screens/DettaglioPuntoVendita.dart';
import 'package:eco_car_wash_2/Utils/PuntoVendita.dart';
import 'package:eco_car_wash_2/Utils/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Definizione dello StatefulWidget per i punti vendita
class PuntiVendita extends StatefulWidget {
  @override
  _PuntiVenditaState createState() => new _PuntiVenditaState();
}

class _PuntiVenditaState extends State<PuntiVendita> {
  // Controller della casella di testo per la ricerca
  TextEditingController editingController = TextEditingController();

  // Lista dei punti vendita presi dalla pagina "http://www.ecocarwash.eu/i-nostri-punti-vendita/"
  final List<PuntoVendita> listaPunti = getListaPuntiVendita();
  List<PuntoVendita> punti = List<PuntoVendita>();

  // Metodo per definire lo stato iniziale del Widget
  @override
  void initState() {
    // Aggiungo tutti i punti vendita in una lista da utilizzare per la ricerca
    punti.addAll(listaPunti);
    super.initState();
  }

  // Metodo utilizzato per filtrare i risultati nella lista dei punti vendita
  void filtraRisultati(String ricerca) {
    List<PuntoVendita> puntiNonFiltrati = List<PuntoVendita>();
    puntiNonFiltrati.addAll(listaPunti);
    // Se la stringa di ricerca è valorizzata...
    if (ricerca.isNotEmpty) {
      // Creo una lista di punti vendita filtrata in base alla stringa
      List<PuntoVendita> puntiFiltrati = List<PuntoVendita>();
      puntiNonFiltrati.forEach((punto) {
        if (punto.city.contains(ricerca)) {
          puntiFiltrati.add(punto);
        }
      });
      setState(() {
        punti.clear();
        punti.addAll(puntiFiltrati);
      });
      return;
    } else {
      // Altrimenti...
      setState(() {
        // Visualizzo la lista allo stato iniziale
        punti.clear();
        punti.addAll(listaPunti);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Dimensioni Schermo
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Punti Vendita'),
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
          // Container per una casella di testo per la ricerca e una lista di punti vendita
          Container(
            child: Column(children: <Widget>[
              // Casella di testo per la ricerca degli elementi
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      onChanged: (value) {
                        filtraRisultati(value);
                      },
                      controller: editingController,
                      decoration: InputDecoration(
                          labelText: "Scrivi una città",
                          hintText: "Cerca...",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          )))),
              // Costruisco una ListView dalla lista dei punti vendita
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: punti.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text('${punti[index].city}'),
                            // Quando si clicca sui punti vendita si accede alla pagina di dettaglio dei punti vendita
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => DettaglioPuntoVendita(
                                      punto: punti[index]),
                                ),
                              );
                            });
                      })),
            ]),
          )
        ]));
  }
}
