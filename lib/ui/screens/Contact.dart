import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
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
      body: ContactPage(),
    );
  }
}


class ContactPage extends StatelessWidget {
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
                  child: Text('Kontakt', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Text('PZN - WIESLOCH', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Mit insgesamt fünf Standorten gewährleistet das Psychiatrische Zentrum Nordbaden eine wohnortnahe und flächendeckende Versorgung der '
                      'Bevölkerung. Die Zentren für Psychische Gesundheit Bruchsal, Neckar-Odenwald, Schwetzingen und Weinheim sowie der Hauptstandort in Wiesloch '
                      'bieten eine Vielzahl von Untersuchungs- und Behandlungseinheiten und ergänzen sich zu einem umfassenden Therapieangebot für Erwachsene, die '
                      'psychiatrischer Beratung und Betreuung bedürfen.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

