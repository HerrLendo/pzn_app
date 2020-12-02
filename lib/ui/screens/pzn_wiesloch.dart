import 'package:flutter/material.dart';

class pzn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text(
          "zfp",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      body: pzn_page(),
    );
  }
}


class pzn_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)
            ),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.yellow[700]
              ),
              child: Center(
                  child: Text('Unser Zentrum', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Image.network('https://www.pzn-wiesloch.de/fileadmin/_processed_/csm_PZN_Wiesloch_Zentralgebaeude_Brunnen_c4430bab96.jpg')),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Text('VON DER GROSSHERZOGLICH BADISCHEN HEIL- UND PFLEGEANSTALT ZUM MODERNEN ZENTRUM', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Das Psychiatrische Zentrum Nordbaden (PZN) wurde 1905 als "Großherzoglich Badische Heil- und Pflegeanstalt bei Wiesloch" gegründet. In wechselvoller Geschichte hat sich die Einrichtung für die Behandlung'
                      ' erwachsener Menschen zum leistungsstarken Zentrum mit einer Vielzahl von medizinischen und sozialen Dienstleistungen weiterentwickelt. Dank fortschrittlicher Leitung und effizienter Organisationsstruktur '
                      'erfüllt das PZN vielseitige Aufgaben in unterschiedlichen Geschäftsfeldern. Hohe Maßstäbe'
                      ' an die Qualität sowie die gewissenhafte Orientierung an ethischen Grundsätzen prägen das Engagement des PZN über alle Unternehmens- und Fachbereiche hinweg.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Text('ZENTRUMSSITZ WIESLOCH - GUT ANGEBUNDEN INMITTEN INTAKTER NATUR', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Von der attraktiven Lage südlich von Heidelberg profitieren auch unsere 1700 Beschäftigten, denen der Arbeitgeber PZN gute Rahmenbedingungen bietet.'
                      ' Karriere- und Jobangebote mit interessanten Berufsperspektiven werden an den verschiedenen PZN-Standorten in Wiesloch, Bruchsal, Mosbach, Schwetzingen '
                      'und Weinheim geboten. Alle Standorte sind gut an die überregionalen Zentren angebunden.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //item.dart für Posts wie Bilder etcA
        ],
      ),
    );
  }
}