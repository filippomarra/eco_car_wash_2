// File per le variabili globali utilizzate su tutti i file
import 'package:eco_car_wash_2/Utils/PuntoVendita.dart';

// Percorsi immagini
const img_path = "assets/images";
const logo = "$img_path/logo.png";
const img_chisiamo = "$img_path/chisiamo.jpeg";
const img_background = "$img_path/background.jpg";
const img_vapore = "$img_path/vapore.jpg";
const img_contattaci = "$img_path/contattaci.png";
const img_dettaglio = "$img_path/dettaglio.jpg";

// Testi pagina "Chi Siamo"
const servizi = "Il lavoro di ECO CAR WASH punta alle cose fatte bene e al "
    "rispetto per l’ambiente, questa è la nostra mission. "
    "Sin nelle attrezzature utilizzate e nel modo in cui i veicoli "
    "dei clienti sono trattati c’è la nostra professionalità. \n";
const vapore =
    "Autolavaggio che cura fin nel minimo dettaglio la pulizia interna "
    "ed esterna di tutti i veicoli.\nLa tecnologia a vapore permette un consumo "
    "inferiore di acqua e garantisce una pulizia esterna delle superfici di "
    "estrema precisione. Ogni punto vendita ECO CAR WASH assicura una pulizia "
    "a vapore fin nel minimo dettaglio.\nIl servizio permetterà di sfoggiare "
    "nuovamente il proprio veicolo ormai “rinato”. \n";
const contattaci = "Per maggiori informazioni\n"
    "contattaci ai seguenti recapiti: \n\n"
    "ECOCARWASH S.R.L.S. \n"
    "Via Flaminia 58 00067 \n"
    "Morlupo RM Italia \n"
    "P.IVA 12139771005 \n"
    "info@ecocarwash.org \n"
    "Tel 06 83529102 \n "
    "Cel 320 9734695 \n\n";

// Funzione che restituisce la lista di punti vendita presente sulla pagina "http://www.ecocarwash.eu/i-nostri-punti-vendita/"
List<PuntoVendita> getListaPuntiVendita() {
  List<PuntoVendita> lista = [
    PuntoVendita(city: "Andria (BT)", address: "Via Vignale, 73"),
    PuntoVendita(city: "Avezzano", address: "Via XX Settembre, 365"),
    PuntoVendita(city: "Bologna", address: "Mobile"),
    PuntoVendita(city: "Cagliari (CA)", address: "Via Santa Gilla, 131"),
    PuntoVendita(city: "Cerveteri (RM)", address: "Mobile"),
    PuntoVendita(city: "Jesolo", address: "Mobile"),
    PuntoVendita(city: "Lecce", address: "Mobile"),
    PuntoVendita(city: "Marina di Carrara", address: "Mobile"),
    PuntoVendita(
        city: "Monte di Procida (NA)",
        address: "Via Cappella 729 - 80070 Napoli"),
    PuntoVendita(city: "Morlupo (RM)", address: "Via Flaminia, 1830"),
    PuntoVendita(
        city: "Oristano", address: "Via Sant’Antonio, 19 Gonnostramatza"),
    PuntoVendita(city: "Roma", address: "Via di Trigoria, 193"),
    PuntoVendita(city: "Roma Zona Selva Candida - Boccea", address: "Mobile"),
    PuntoVendita(
        city: "San Cesareo (RM)",
        address: "C. Commerciale “La Noce”– Via Casilina, 43"),
    PuntoVendita(city: "Torino", address: "Mobile"),
    PuntoVendita(city: "Trani (BT)", address: "Via G. Falcone, 35"),
    PuntoVendita(city: "Venezia", address: "Mobile"),
    PuntoVendita(city: "Viterbo", address: "Via San Camillo De Lellis snc"),
    PuntoVendita(city: "Zona Trieste", address: "Mobile"),
  ];

  return lista;
}
